using Xamarin.Forms;

namespace XamarinPractice
{
    public partial class MainTabbedPage : TabbedPage
    {
        public MainTabbedPage(PostViewModel viewModel)
        {
            InitializeComponent();

            // Même ViewModel partagé entre les deux pages
            this.BindingContext = viewModel;

            // On force les pages à partager ce même BindingContext
            foreach (var child in Children)
            {
                child.BindingContext = viewModel;
            }
        }
    }
}
