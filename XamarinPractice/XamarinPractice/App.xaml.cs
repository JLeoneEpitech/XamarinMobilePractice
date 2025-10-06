using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
namespace XamarinPractice
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            var viewModel = new PostViewModel();

            MainPage = new NavigationPage(new MainTabbedPage(viewModel));



            //MainPage = new NavigationPage(new MainPage());
            //MainPage = new NavigationPage(new MapPage());


        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
