using BruTile.Predefined;
using Mapsui;
using Mapsui.Layers;
using Mapsui.Projections;
using Mapsui.Tiling;
using Mapsui.Tiling.Layers;
using Mapsui.UI.Forms;
using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class MapPage : ContentPage
    {
        public MapPage()
        {
            InitializeComponent();

            // Crée la carte
            var map = new Map
            {
                CRS = "EPSG:3857",
                BackColor = Mapsui.Styles.Color.White
            };

            // Ajouter un TileLayer OSM
            map.Layers.Add(new TileLayer(KnownTileSources.Create()));

            // Centre la carte sur Montpellier
            var point = SphericalMercator.FromLonLat(3.8777, 43.6119);
            var montpellier = new MPoint(point.x, point.y);              // convertit en MPoint


            map.Home = n =>
            {
                n.CenterOn(montpellier);
                n.ZoomTo(2000); // rayon en mètres
            };

            // Associe la map au MapView
            MapView.Map = map;
        }
    }
}
