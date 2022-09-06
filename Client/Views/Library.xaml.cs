using Client.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Client.Views
{
    /// <summary>
    /// Логика взаимодействия для Library.xaml
    /// </summary>
    public partial class Library : Window
    {
        public int cnt;
        HttpClient client = new HttpClient();
        public Library()
        {
            client.BaseAddress = new Uri("https://localhost:7174/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            var books = new Books()
            {
                Name = txtboxname.Text,
                Author = txtboxauthor.Text
            };

            
            if (books.Id == 0)
            {
                this.SaveBook(books);
                lblmesseng.Content = "Book Saved";
            }
            else 
            {
                this.UpdateBook(books);
                lblmesseng.Content = "Book Update";
            }

            bookid.Text = 0.ToString();
            txtboxname.Text = "";
            txtboxauthor.Text = "";
        }

        private void RefreshButton_Click(object sender, RoutedEventArgs e)
        {
            this.GetBooks();
        }

        private async void GetBooks() 
        {
            lblmesseng.Content = "";

            var response = await client.GetStringAsync("books");
            var books = JsonConvert.DeserializeObject<List<Books>>(response);

            dgBooks.ItemsSource = books;

        }

        private async void SaveBook(Books books) 
        {
            await client.PostAsJsonAsync("books", books);
        } 
        private async void UpdateBook(Books books) 
        {
            await client.PutAsJsonAsync("books/" + books.Id, books);
        }

        void btnEditBook(object sender, RoutedEventArgs e)
        {
            Books books = ((FrameworkElement)sender).DataContext as Books;
            bookid.Text = books.Id.ToString();
            txtboxname.Text = books.Name;
            txtboxauthor.Text = books.Author;
        }
        void btnDeleteBook(object sender, RoutedEventArgs e)
        {
            Books books = ((FrameworkElement)sender).DataContext as Books;
            client.DeleteAsync("books/" + (int)books.Id);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var books = new Books()
            {
                Id = Convert.ToInt32(bookid.Text),
                Name = txtboxname.Text,
                Author = txtboxauthor.Text
            };


            if (books.Id == 0)
            {
                this.SaveBook(books);
                lblmesseng.Content = "Book Saved";
            }
            else
            {
                this.UpdateBook(books);
                lblmesseng.Content = "Book Update";
            }

            bookid.Text = 0.ToString();
            txtboxname.Text = "";
            txtboxauthor.Text = "";
        }
    }
}
