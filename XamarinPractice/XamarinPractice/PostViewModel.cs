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

        public PostViewModel()
        {

            LoadPostsAsync();
            OpenMapCommand = new Command(OnOpenMap);
        }

        private async Task LoadPostsAsync()
        {
            var client = new ApiClient();
            var postsFromApi = await client.GetAsync<Post>("https://jsonplaceholder.typicode.com/posts");

            foreach (var post in postsFromApi.Take(10)) //Limited to 10 to avoid lagging emulator
                Posts.Add(post);
        }
        private async void OnOpenMap()
        {
            // Navigation via Application.Current.MainPage
            await Application.Current.MainPage.Navigation.PushAsync(new MapPage(this));
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
