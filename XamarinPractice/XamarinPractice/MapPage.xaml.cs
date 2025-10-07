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
using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class MapPage : ContentPage
    {
        private MPoint montpellier;
        private MemoryLayer pinLayer;
        private MapPageViewModel viewModel;
        private Random random = new Random();
        private bool _isRefreshingPins = false;

        public MapPage()
        {
            InitializeComponent();

            // Crée la carte
            var map = new Map
            {
                CRS = "EPSG:3857",
                BackColor = Mapsui.Styles.Color.White
            };

            // OpenTopoMap layer
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

            // Coordonnées Montpellier
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

            if (BindingContext is PostViewModel postVm)
            {
                // Crée le MapPageViewModel basé sur le PostViewModel
                viewModel = new MapPageViewModel(postVm);

                viewModel.PostsUpdated -= ViewModel_PostsUpdated;
                viewModel.PostsUpdated += ViewModel_PostsUpdated;

                if (postVm.Posts.Count > 0)
                    RefreshPins();
            }
        }

        private void ViewModel_PostsUpdated(object sender, EventArgs e)
        {
            RefreshPins();
        }

        private void RefreshPins()
        {
            if (_isRefreshingPins || MapView?.Map == null)
                return;

            _isRefreshingPins = true;

            Device.BeginInvokeOnMainThread(() =>
            {
                try
                {
                    if (pinLayer != null)
                        MapView.Map.Layers.Remove(pinLayer);

                    AddPinsFromViewModel(MapView.Map);
                }
                finally
                {
                    _isRefreshingPins = false;
                }
            });
        }

        private async void MapView_MapClicked(object sender, MapClickedEventArgs e)
        {
            double clickLat = e.Point.Latitude;
            double clickLon = e.Point.Longitude;

            var nearestPost = viewModel.GetNearestPost(clickLat, clickLon, 100);

            if (nearestPost != null)
            {
                await DisplayAlert(nearestPost.Title, nearestPost.Body, "OK");
            }
        }

        private void AddPinsFromViewModel(Map map)
        {
            if (viewModel == null)
                return;

            var postVm = (BindingContext as PostViewModel);
            if (postVm?.Posts == null || postVm.Posts.Count == 0)
                return;

            var features = new List<IFeature>();

            foreach (var post in postVm.Posts)
            {
                // Génère un offset aléatoire autour de Montpellier
                var offsetX = (random.NextDouble() - 0.5) * 5000;
                var offsetY = (random.NextDouble() - 0.5) * 5000;
                //Génère les coordonées du point
                var geometryPoint = new NetTopologySuite.Geometries.Point(montpellier.X + offsetX, montpellier.Y + offsetY);

                //Créer la feature et l'ajoute à la liste des features
                var feature = new GeometryFeature { Geometry = geometryPoint };
                feature["Title"] = post.Title;
                feature["Body"] = post.Body;
                feature.Styles.Add(new SymbolStyle
                {
                    SymbolType = SymbolType.Ellipse,
                    SymbolScale = 0.8,
                    Fill = new Mapsui.Styles.Brush(Mapsui.Styles.Color.Red),
                });

                features.Add(feature);
            }
            //Ajoute les features à une MemoryLayer puis ajoute la ML à la map
            pinLayer = new MemoryLayer
            {
                Name = "Posts",
                Features = features
            };

            map.Layers.Add(pinLayer);
        }
    }
}
