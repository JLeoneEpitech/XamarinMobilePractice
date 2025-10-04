using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class PostDetailPage : ContentPage
    {
        public PostDetailPage()
        {
            InitializeComponent();
        }
        
        public PostDetailPage(Post post) : this()
        {
            BindingContext=post;
        }
    }
}
