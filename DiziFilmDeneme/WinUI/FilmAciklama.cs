using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinUI
{
    public partial class FilmAciklama : Form
    {
        public FilmAciklama()
        {
            InitializeComponent();
        }


        private void FilmAciklama_Load(object sender, EventArgs e)
        {

        }


        private void button2_Click(object sender, EventArgs e)
        {





            if (String.IsNullOrEmpty(textBox1.Text))
            {
                MessageBox.Show("Film adı boş bırakılamaz.");
                return;
            }
            else if (String.IsNullOrEmpty(textBox4.Text))
            {
                MessageBox.Show("Filmin vizyona giriş yılı boş bırakılamaz.");
                return;
            }
        }

       
    }
}
