using BLL.Repositories;
using DAL;
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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            ToolTip tooltip = new ToolTip();
            tooltip.SetToolTip(txtOyncuAra, "Oyuncu adı");
        }
        OyuncularRepository or = new OyuncularRepository();
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void oyncuGetir_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = or.GetAll();
            dataGridView1.Columns["DiziOyuncular"].Visible = false;
            dataGridView1.Columns["FilmOyuncular"].Visible = false;
        }

        private void btnOyncuAra_Click(object sender, EventArgs e)
        {
            int girilenId = Convert.ToInt32(txtOyncuAra.Text);
            List<Oyuncular> liste = new List<Oyuncular>();
            liste.Add(or.GetById(girilenId));
            dataGridView1.DataSource = liste.ToList();

        }

        private void txtOyncuAra_TextChanged(object sender, EventArgs e)
        {
            dataGridView1.DataSource = or.GetAll().Where(o => o.OyuncuAdi.StartsWith(txtOyncuAra.Text)).ToList();
        }

        private void txtOyncuAra_Click(object sender, EventArgs e)
        {
            txtOyncuAra.Text = "";
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            string OyuncuAdi = oyncuadi.Text;
            string OyuncuSoyadi = oyncusoyadi.Text;
            //DateTime DogumTarihi = oyncudgmtarihi.Value;
            string Cinsiyet = oyncucinsiyeti.Text;
            string Ulkesi = oyncuulkesi.Text;
            string OyuncuOdulleri = oyncuodul.Text;


            if (string.IsNullOrEmpty(OyuncuAdi) || string.IsNullOrEmpty(OyuncuSoyadi) || string.IsNullOrEmpty(Cinsiyet) || string.IsNullOrEmpty(Ulkesi) || string.IsNullOrEmpty(OyuncuOdulleri))
            {
                MessageBox.Show("İlgili alanlar boş geçilemez");
                return;
            }

            //or.Ekle(new Oyuncular
            //{
            //    oyncuadi = OyuncuAdi,
            //    oyncusoyadi = OyuncuSoyadi

            //});

            or.Ekle(new Oyuncular
            {
                OyuncuAdi = oyncuadi.Text,
                OyuncuSoyadi = oyncusoyadi.Text,
                DogumTarihi = oyncudgmtarihi.Value,
                Cinsiyet = oyncucinsiyeti.Text,
                Ulkesi = oyncuulkesi.Text,
                OyuncuOdulleri = oyncuodul.Text
            });

            MessageBox.Show("Yeni oyuncu eklendi.");
            dataGridView1.DataSource = or.GetAll(); 
            Temizle_Oyuncular();

        }

        private void Temizle_Oyuncular()
        {
            oyncuadi.Text = oyncusoyadi.Text = oyncucinsiyeti.Text = oyncuulkesi.Text = oyncuodul.Text = string.Empty;
        }


        Oyuncular secilenOyuncular;
        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {

            secilenOyuncular = or.GetById(Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value));
            oyncuadi.Text = secilenOyuncular.OyuncuAdi;
            oyncusoyadi.Text = secilenOyuncular.OyuncuSoyadi;
            oyncudgmtarihi.Value = Convert.ToDateTime(secilenOyuncular.DogumTarihi);
            oyncucinsiyeti.Text = secilenOyuncular.Cinsiyet;
            oyncuulkesi.Text = secilenOyuncular.Ulkesi;
            oyncuodul.Text = secilenOyuncular.OyuncuOdulleri;
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            secilenOyuncular.OyuncuAdi = oyncuadi.Text;
            secilenOyuncular.OyuncuSoyadi = oyncusoyadi.Text;
            secilenOyuncular.DogumTarihi = oyncudgmtarihi.Value;
            secilenOyuncular.Cinsiyet = oyncucinsiyeti.Text;
            secilenOyuncular.Ulkesi = oyncuulkesi.Text;
            secilenOyuncular.OyuncuOdulleri = oyncuodul.Text;
            or.Guncelle(secilenOyuncular);
            MessageBox.Show("Değişiklikler kaydedildi.");
            dataGridView1.DataSource = or.GetAll();
            
            Temizle_Oyuncular();
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                or.Sil(Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value));
                dataGridView1.DataSource = or.GetAll();
                Temizle_Oyuncular();

            }
        }
    }
}
