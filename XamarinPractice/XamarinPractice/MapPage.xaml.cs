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
        private Random random = new Random();

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
                n.ZoomTo(2000);
            };

            MapView.Map = map;

            // Ajoute les pins
            AddPins(map);
        }

        private MPoint RandomPointNear(MPoint center, double radiusInMeters)
        {
            double radiusInDegrees = radiusInMeters / 111320.0;
            double u = random.NextDouble();
            double v = random.NextDouble();
            double w = radiusInDegrees * Math.Sqrt(u);
            double t = 2 * Math.PI * v;

            double xOffset = w * Math.Cos(t);
            double yOffset = w * Math.Sin(t);

            return new MPoint(center.X + xOffset, center.Y + yOffset);
        }

        private void AddPins(Map map)
        {
            var posts = new List<string>
    {
        "Post 1","Post 2","Post 3","Post 4","Post 5",
        "Post 6","Post 7","Post 8","Post 9","Post 10"
    };

            var features = new List<IFeature>();

            for (int i = 0; i < posts.Count; i++)
            {
                var randomPoint = RandomPointNear(montpellier, 1000);

                // Convertit en NTS.Point pour la feature
                var ntsPoint = new NetTopologySuite.Geometries.Point(randomPoint.X, randomPoint.Y);

                var feature = new GeometryFeature
                {
                    Geometry = ntsPoint
                };

                feature["Title"] = posts[i]; // titre du post

                // Ajoute un style rouge
                feature.Styles.Add(new SymbolStyle
                {
                    SymbolType = SymbolType.Ellipse,
                    SymbolScale = 0.5,
                    Fill = new Mapsui.Styles.Brush(Mapsui.Styles.Color.Red)
                });

                features.Add(feature);
            }

            // Crée un seul provider avec toutes les features
            var provider = new MemoryProvider(features);

            var layer = new Layer("Posts")
            {
                DataSource = provider
            };

            map.Layers.Add(layer);
        }

    }
}
