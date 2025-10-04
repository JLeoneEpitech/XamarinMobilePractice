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
        }

        private async Task LoadPostsAsync()
        {
            var client = new ApiClient();
            var postsFromApi = await client.GetAsync<Post>("https://jsonplaceholder.typicode.com/posts");

            foreach (var post in postsFromApi)
                Posts.Add(post);
        }

        private async void OnPostTapped(Post post)
        {
            if (post != null)
            {
                await Application.Current.MainPage.DisplayAlert(post.Title, post.Body, "OK");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([System.Runtime.CompilerServices.CallerMemberName] string propertyName = null)
            => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

}
