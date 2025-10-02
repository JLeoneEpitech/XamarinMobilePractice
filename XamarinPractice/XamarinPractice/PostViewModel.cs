using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Xsl;

namespace XamarinPractice
{
    public class PostViewModel
    {
        public ObservableCollection<string> Posts { get; } = new ObservableCollection<string>();
        public List<Post> PostsFromApi { get; private set; } = new List<Post>();


        public PostViewModel() {
            LoadPostsAsync();
        }
        private async Task LoadPostsAsync()
        {
            var client = new ApiClient();
            var postsFromApi = await client.GetAsync<Post>("https://jsonplaceholder.typicode.com/posts");

            foreach (var post in postsFromApi)
                Posts.Add(post.Title);
        }
    }
}
