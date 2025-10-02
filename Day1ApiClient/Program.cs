using System;
using System.Threading.Tasks;
using System.Collections.Generic;

public class Post
{
    public int Id { get; set; }
    public string Title { get; set; }

}

class Program
{
    static async Task Main()
    {
        using var client = new ApiClient();
        List<Post> posts = await client.GetAsync<Post>("https://jsonplaceholder.typicode.com/posts");

        Console.WriteLine($"Nb posts: {posts.Count}");
        Console.WriteLine(posts[0].Title);
    }
}