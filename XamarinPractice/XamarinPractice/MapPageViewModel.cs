using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace XamarinPractice
{
    public class MapPageViewModel : BindableObject
    {
        private readonly Random _random = new Random();
        private readonly PostViewModel _postViewModel;

        public event EventHandler PostsUpdated;

        // Coordonnées de référence (Montpellier)
        private readonly double montpellierLon = 3.8777;
        private readonly double montpellierLat = 43.6119;

        public MapPageViewModel(PostViewModel postViewModel)
        {
            _postViewModel = postViewModel ?? throw new ArgumentNullException(nameof(postViewModel));

            // S'abonner à l'événement du PostViewModel
            _postViewModel.PostsLoaded -= OnPostsLoaded;
            _postViewModel.PostsLoaded += OnPostsLoaded;

            // Si les posts sont déjà chargés, on génère immédiatement
            if (_postViewModel.Posts.Count > 0)
            {
                GenerateRandomCoordinates(_postViewModel.Posts);
            }
        }

        private void OnPostsLoaded(object sender, EventArgs e)
        {
            GenerateRandomCoordinates(_postViewModel.Posts);
            PostsUpdated?.Invoke(this, EventArgs.Empty);
        }

        private void GenerateRandomCoordinates(IEnumerable<Post> posts)
        {
            foreach (var post in posts)
            {
                // Si le post n’a pas encore de coordonnées, on les génère
                if (post.Latitude == 0 && post.Longitude == 0)
                {
                    double offsetLat = (_random.NextDouble() - 0.5) * 0.05;
                    double offsetLon = (_random.NextDouble() - 0.5) * 0.05;

                    post.Latitude = montpellierLat + offsetLat;
                    post.Longitude = montpellierLon + offsetLon;
                }
            }
        }

        public Post GetNearestPost(double clickLat, double clickLon, double maxDistanceMeters = 100)
        {
            var posts = _postViewModel.Posts;
            if (posts == null || posts.Count == 0)
                return null;

            Post nearest = null;
            double minDistance = double.MaxValue;

            foreach (var post in posts)
            {
                double dist = GetDistanceMeters(clickLat, clickLon, post.Latitude, post.Longitude);
                if (dist < minDistance)
                {
                    minDistance = dist;
                    nearest = post;
                }
            }

            return minDistance <= maxDistanceMeters ? nearest : null;
        }

        private double GetDistanceMeters(double lat1, double lon1, double lat2, double lon2)
        {
            double R = 6371e3; // Rayon Terre en mètres
            double phi1 = lat1 * Math.PI / 180;
            double phi2 = lat2 * Math.PI / 180;
            double deltaPhi = (lat2 - lat1) * Math.PI / 180;
            double deltaLambda = (lon2 - lon1) * Math.PI / 180;

            double a = Math.Sin(deltaPhi / 2) * Math.Sin(deltaPhi / 2) +
                       Math.Cos(phi1) * Math.Cos(phi2) *
                       Math.Sin(deltaLambda / 2) * Math.Sin(deltaLambda / 2);
            double c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));

            return R * c;
        }
    }
}
