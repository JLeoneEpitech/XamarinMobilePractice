using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace XamarinPractice
{
    public class PostViewModel : INotifyPropertyChanged
    {
        public ObservableCollection<Post> Posts { get; } = new ObservableCollection<Post>();

        public ICommand OpenMapCommand { get; }


        private Post _selectedPost;
        public Post SelectedPost
        {
            get => _selectedPost;
            set
            {
                if (_selectedPost != value)
                {
                    _selectedPost = value;
                    OnPropertyChanged();
                    OnPostTapped(_selectedPost); // Action directe
                }
            }
        }

        //  Événement qui sera déclenché quand les posts sont chargés
        public event EventHandler PostsLoaded;
        public PostViewModel()
        {

            LoadPostsAsync();
            OpenMapCommand = new Command(OnOpenMap);
        }

        private async Task LoadPostsAsync()
        {
            try
            {
                var client = new ApiClient();
                var postsFromApi = await client.GetAsync<Post>("https://jsonplaceholder.typicode.com/posts");

                foreach (var post in postsFromApi.Take(10)) //Limited to 10 to avoid lagging emulator
                    Posts.Add(post);

                // On avertit que les posts sont chargés
                PostsLoaded?.Invoke(this, EventArgs.Empty);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Erreur de chargement des posts : {ex.Message}");
            }
        }
        private async void OnOpenMap()
        {
            // Navigation via Application.Current.MainPage
            await Application.Current.MainPage.Navigation.PushAsync(new MapPage());
        }
        private async void OnPostTapped(Post post)
        {
            if (post != null)
            {
                await Application.Current.MainPage.Navigation.PushAsync(new PostDetailPage(post));
                //await Application.Current.MainPage.DisplayAlert(post.Title, post.Body, "OK");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([System.Runtime.CompilerServices.CallerMemberName] string propertyName = null)
            => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

}
