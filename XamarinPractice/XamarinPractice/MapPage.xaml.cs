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
                n.ZoomTo(50);
            };

            MapView.Map = map;

            // Ajoute les pins
            AddPins(map);
        }
        private void AddPins(Map map)
        {
            var posts = new List<string>
    {
        "Post 1","Post 2","Post 3","Post 4","Post 5",
        "Post 6","Post 7","Post 8","Post 9","Post 10"
    };

            var features = new List<IFeature>();

            foreach (var post in posts)
            {
                var offsetX = (random.NextDouble() - 0.5) * 5000;
                var offsetY = (random.NextDouble() - 0.5) * 5000;

                var point = new NetTopologySuite.Geometries.Point(montpellier.X + offsetX, montpellier.Y + offsetY);


                var feature = new GeometryFeature { Geometry = point };
                feature.Styles.Add(new SymbolStyle
                {
                    SymbolType = SymbolType.Ellipse,
                    SymbolScale = 0.8,
                    // couleur : Mapsui.Styles.Color (si ta version réclame Brush, on corrigera)
                    Fill = new Mapsui.Styles.Brush(Mapsui.Styles.Color.Red),  // <-- Brush avec Color

                });

                features.Add(feature);
            }

            var pinLayer = new MemoryLayer
            {
                Name = "Posts",
                Features = features   
            };

            map.Layers.Add(pinLayer);

        }

    }
}
