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

            // Ajoute les pins
            AddPins(map);

            MapView.MapClicked += MapView_MapClicked;



        }
        private double Distance(double lat1, double lon1, double lat2, double lon2)
        {
            double dLat = lat1 - lat2;
            double dLon = lon1 - lon2;
            return Math.Sqrt(dLat * dLat + dLon * dLon);
        }
        private async void MapView_MapClicked(object sender, MapClickedEventArgs e)
        {
            Console.WriteLine("----------------EVENT CLICK----------------");

            // Coordonnées du clic en "monde réel"
            double clickLat = e.Point.Latitude;
            double clickLon = e.Point.Longitude;
            
            //DEBUGUER CLOSEST CLICK

            // On prend le post le plus proche
            var closestPost = postsWithCoords
                .OrderBy(p => Distance(clickLat, clickLon, p.lat, p.lon))
                .First()
                .post;

            DisplayAlert(closestPost.Title, closestPost.Body, "OK");
        }
    
        private void AddPins(Map map)
        {
            var posts = new List<Post>
            {
                new Post { Title = "Post 1", Body = "Body 1" },
                new Post { Title = "Post 2", Body = "Body 2" },
                new Post { Title = "Post 3", Body = "Body 3" },
                new Post { Title = "Post 4", Body = "Body 4" },
                new Post { Title = "Post 5", Body = "Body 5" },
                new Post { Title = "Post 6", Body = "Body 6" },
                new Post { Title = "Post 7", Body = "Body 7" },
                new Post { Title = "Post 8", Body = "Body 8" },
                new Post { Title = "Post 9", Body = "Body 9" },
                new Post { Title = "Post 10", Body = "Body 10" },

            };

            var features = new List<IFeature>();

            foreach (var post in posts)
            {
                var offsetX = (random.NextDouble() - 0.5) * 5000;
                var offsetY = (random.NextDouble() - 0.5) * 5000;



                var point = new NetTopologySuite.Geometries.Point(montpellier.X + offsetX, montpellier.Y + offsetY);

                postsWithCoords.Add((post, point.X, point.Y));

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
