using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            var vm = new PostViewModel();
            BindingContext = vm;

            PostsListView.ItemTapped += async (s, e) =>
            {
                if (e.Item is string title)
                {
                    //récupère le body correspondant au titre envoyé de l'item qu'on selectionne
                    var post = vm.PostsFromApi.Find(p => p.Title == Title);
                    await DisplayAlert(title, post?.Body ?? "Aucun contenu", "ok");
                }
                ((ListView)s).SelectedItem = null; // Déselection

            };

        }
    }
}
