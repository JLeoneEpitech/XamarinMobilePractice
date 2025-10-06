using BruTile.Predefined;
using BruTile.Web;
using Mapsui;
using Mapsui.Layers;
using Mapsui.Nts;
using Mapsui.Projections;
using Mapsui.Providers;
using Mapsui.Styles;
using Mapsui.Tiling;
using Mapsui.Tiling.Layers;
using Mapsui.UI.Forms;
using NetTopologySuite.Geometries;
using System;
using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class MapPage : ContentPage
    {
        private MPoint montpellier;
        private Random random = new Random();
        private MemoryLayer pinLayer; // <- référence globale
        private List<(Post post, double lat, double lon)> postsWithCoords = new List<(Post post, double lat, double lon)>();
        private PostViewModel viewModel;

        public MapPage()
        {
            InitializeComponent();

            // Crée la carte
            var map = new Map
            {
                CRS = "EPSG:3857",
                BackColor = Mapsui.Styles.Color.White
            };

            // TileLayer OpenTopoMap avec User-Agent
             var topoLayer = new TileLayer(
             new HttpTileSource(
                 new GlobalSphericalMercator(),
                 "https://tile.opentopomap.org/{z}/{x}/{y}.png",
                 name: "OpenTopoMap",
                 userAgent: "XamarinPractice/1.0 (+https://yourapp.example.com)"
                 )
             )  
            {
                Name = "TopoMap"
            };

            map.Layers.Add(topoLayer);

            // Coordonnées de Montpellier
            var lonLat = SphericalMercator.FromLonLat(3.8777, 43.6119);
            montpellier = new MPoint(lonLat.x, lonLat.y);
           
            // Vue initiale
            map.Home = n =>
            {
                n.CenterOn(montpellier);
                n.ZoomTo(50);
            };

            MapView.Map = map;

      

            MapView.MapClicked += MapView_MapClicked;



        }
        protected override void OnBindingContextChanged()
        {
            base.OnBindingContextChanged();

            if (BindingContext is PostViewModel vm)
            {
                viewModel = vm;

                // Ne jamais ajouter deux fois
                vm.PostsLoaded -= Vm_PostsLoaded; // au cas où l’événement était déjà attaché
                vm.PostsLoaded += Vm_PostsLoaded;

                if (vm.Posts.Count > 0)
                    AddPinsFromViewModel(MapView.Map);
            }
        }
        private void Vm_PostsLoaded(object sender, EventArgs e)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                // Vide l’ancienne couche si elle existe
                if (pinLayer != null)
                    MapView.Map.Layers.Remove(pinLayer);

                AddPinsFromViewModel(MapView.Map);
            });
        }

        private double Distance(double lat1, double lon1, double lat2, double lon2)
        {
            double dLat = lat1 - lat2;
            double dLon = lon1 - lon2;
            return Math.Sqrt(dLat * dLat + dLon * dLon);
        }
        private async void MapView_MapClicked(object sender, MapClickedEventArgs e)
        {

            // Coordonnées du clic en "monde réel"
            double clickLat = e.Point.Latitude;
            double clickLon = e.Point.Longitude;

            if (postsWithCoords.Count == 0)
                return;

            (Post post, double lat, double lon) nearestPost = postsWithCoords[0];
            double minDistance = GetDistance(clickLat, clickLon, nearestPost.lat, nearestPost.lon);

            foreach (var p in postsWithCoords)
            {
                double distance = GetDistance(clickLat, clickLon, p.lat, p.lon);
                if (distance < minDistance)
                {
                    minDistance = distance;
                    nearestPost = p;
                }
            }
            if (minDistance <= 100)
            {
                await DisplayAlert(nearestPost.post.Title, nearestPost.post.Body, "OK");
            }
            Console.WriteLine($"Post le plus proche : {nearestPost.post.Title}, Distance : {minDistance} mètres");
            

        }
        // Méthode Haversine pour calculer la distance entre 2 points GPS
        private double GetDistance(double lat1, double lon1, double lat2, double lon2)
        {
            double R = 6371e3; // Rayon de la Terre en mètres
            double phi1 = lat1 * Math.PI / 180;
            double phi2 = lat2 * Math.PI / 180;
            double deltaPhi = (lat2 - lat1) * Math.PI / 180;
            double deltaLambda = (lon2 - lon1) * Math.PI / 180;

            double a = Math.Sin(deltaPhi / 2) * Math.Sin(deltaPhi / 2) +
                       Math.Cos(phi1) * Math.Cos(phi2) *
                       Math.Sin(deltaLambda / 2) * Math.Sin(deltaLambda / 2);
            double c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));

            return R * c; // distance en mètres
        }

        private void AddPinsFromViewModel(Map map)
        {
            if (viewModel.Posts.Count == 0) return;

            postsWithCoords.Clear(); // obligatoire pour éviter les doublons


            var features = new List<IFeature>();

            foreach (var post in viewModel.Posts)
            {
                // Génère un offset aléatoire autour de Montpellier
                var offsetX = (random.NextDouble() - 0.5) * 5000;
                var offsetY = (random.NextDouble() - 0.5) * 5000;
            
                //Création du point Topology
                var point = new NetTopologySuite.Geometries.Point(montpellier.X + offsetX, montpellier.Y + offsetY);

                //Convert Mercator mettric (for map) to long lat for coordonées
                var latLon = SphericalMercator.ToLonLat(point.X, point.Y);
                postsWithCoords.Add((post, latLon.lat, latLon.lon));

                var feature = new GeometryFeature { Geometry = point };
                // Ajoute les infos du post
                feature["Title"] = post.Title;
                feature["Body"] = post.Body;
                feature.Styles.Add(new SymbolStyle
                {
                    SymbolType = SymbolType.Ellipse,
                    SymbolScale = 0.8,
                    // couleur : Mapsui.Styles.Color (si ta version réclame Brush, on corrigera)
                    Fill = new Mapsui.Styles.Brush(Mapsui.Styles.Color.Red),  // <-- Brush avec Color

                });

                features.Add(feature);
            }

             pinLayer = new MemoryLayer
            {
                Name = "Posts",
                Features = features   
            };

            map.Layers.Add(pinLayer);

        }

    }
}
