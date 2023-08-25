
namespace WinUI
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.oyncuGetir = new System.Windows.Forms.Button();
            this.txtOyncuAra = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnEkle = new System.Windows.Forms.Button();
            this.btnGuncelle = new System.Windows.Forms.Button();
            this.oyncuadi = new System.Windows.Forms.TextBox();
            this.oyncusoyadi = new System.Windows.Forms.TextBox();
            this.oyncucinsiyeti = new System.Windows.Forms.TextBox();
            this.oyncuulkesi = new System.Windows.Forms.TextBox();
            this.oyncuodul = new System.Windows.Forms.TextBox();
            this.oyncudgmtarihi = new System.Windows.Forms.DateTimePicker();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // oyncuGetir
            // 
            this.oyncuGetir.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncuGetir.Location = new System.Drawing.Point(141, 38);
            this.oyncuGetir.Name = "oyncuGetir";
            this.oyncuGetir.Size = new System.Drawing.Size(148, 29);
            this.oyncuGetir.TabIndex = 0;
            this.oyncuGetir.Text = "Oyuncuları Getir";
            this.oyncuGetir.UseVisualStyleBackColor = true;
            this.oyncuGetir.Click += new System.EventHandler(this.oyncuGetir_Click);
            // 
            // txtOyncuAra
            // 
            this.txtOyncuAra.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txtOyncuAra.Location = new System.Drawing.Point(544, 33);
            this.txtOyncuAra.Multiline = true;
            this.txtOyncuAra.Name = "txtOyncuAra";
            this.txtOyncuAra.Size = new System.Drawing.Size(211, 34);
            this.txtOyncuAra.TabIndex = 1;
            this.txtOyncuAra.Text = "                 Oyuncu ARA";
            this.txtOyncuAra.Click += new System.EventHandler(this.txtOyncuAra_Click);
            this.txtOyncuAra.TextChanged += new System.EventHandler(this.txtOyncuAra_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.White;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(141, 108);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 17);
            this.label1.TabIndex = 2;
            this.label1.Text = "Oyuncu Adı :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.White;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(141, 152);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(112, 17);
            this.label2.TabIndex = 3;
            this.label2.Text = "Oyuncu Soyadı :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.White;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(141, 190);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 17);
            this.label3.TabIndex = 4;
            this.label3.Text = "Doğum Tarihi :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label4.Location = new System.Drawing.Point(541, 105);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(68, 17);
            this.label4.TabIndex = 5;
            this.label4.Text = "Cinsiyeti :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label5.Location = new System.Drawing.Point(541, 152);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(54, 17);
            this.label5.TabIndex = 6;
            this.label5.Text = "Ülkesi :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label6.Location = new System.Drawing.Point(541, 190);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(65, 17);
            this.label6.TabIndex = 7;
            this.label6.Text = "Ödülleri :";
            // 
            // btnEkle
            // 
            this.btnEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnEkle.Location = new System.Drawing.Point(885, 96);
            this.btnEkle.Name = "btnEkle";
            this.btnEkle.Size = new System.Drawing.Size(103, 46);
            this.btnEkle.TabIndex = 8;
            this.btnEkle.Text = "EKLE";
            this.btnEkle.UseVisualStyleBackColor = true;
            this.btnEkle.Click += new System.EventHandler(this.btnEkle_Click);
            // 
            // btnGuncelle
            // 
            this.btnGuncelle.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnGuncelle.Location = new System.Drawing.Point(885, 170);
            this.btnGuncelle.Name = "btnGuncelle";
            this.btnGuncelle.Size = new System.Drawing.Size(103, 45);
            this.btnGuncelle.TabIndex = 9;
            this.btnGuncelle.Text = "GÜNCELLE";
            this.btnGuncelle.UseVisualStyleBackColor = true;
            this.btnGuncelle.Click += new System.EventHandler(this.btnGuncelle_Click);
            // 
            // oyncuadi
            // 
            this.oyncuadi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncuadi.Location = new System.Drawing.Point(277, 105);
            this.oyncuadi.Name = "oyncuadi";
            this.oyncuadi.Size = new System.Drawing.Size(100, 23);
            this.oyncuadi.TabIndex = 11;
            // 
            // oyncusoyadi
            // 
            this.oyncusoyadi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncusoyadi.Location = new System.Drawing.Point(277, 147);
            this.oyncusoyadi.Name = "oyncusoyadi";
            this.oyncusoyadi.Size = new System.Drawing.Size(100, 23);
            this.oyncusoyadi.TabIndex = 12;
            // 
            // oyncucinsiyeti
            // 
            this.oyncucinsiyeti.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncucinsiyeti.Location = new System.Drawing.Point(655, 100);
            this.oyncucinsiyeti.Name = "oyncucinsiyeti";
            this.oyncucinsiyeti.Size = new System.Drawing.Size(100, 23);
            this.oyncucinsiyeti.TabIndex = 13;
            // 
            // oyncuulkesi
            // 
            this.oyncuulkesi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncuulkesi.Location = new System.Drawing.Point(655, 147);
            this.oyncuulkesi.Name = "oyncuulkesi";
            this.oyncuulkesi.Size = new System.Drawing.Size(100, 23);
            this.oyncuulkesi.TabIndex = 14;
            // 
            // oyncuodul
            // 
            this.oyncuodul.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncuodul.Location = new System.Drawing.Point(655, 187);
            this.oyncuodul.Name = "oyncuodul";
            this.oyncuodul.Size = new System.Drawing.Size(100, 23);
            this.oyncuodul.TabIndex = 15;
            // 
            // oyncudgmtarihi
            // 
            this.oyncudgmtarihi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.oyncudgmtarihi.Location = new System.Drawing.Point(277, 190);
            this.oyncudgmtarihi.Name = "oyncudgmtarihi";
            this.oyncudgmtarihi.Size = new System.Drawing.Size(141, 23);
            this.oyncudgmtarihi.TabIndex = 16;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(88, 236);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(962, 338);
            this.dataGridView1.TabIndex = 17;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlText;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(1337, 670);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.oyncudgmtarihi);
            this.Controls.Add(this.oyncuodul);
            this.Controls.Add(this.oyncuulkesi);
            this.Controls.Add(this.oyncucinsiyeti);
            this.Controls.Add(this.oyncusoyadi);
            this.Controls.Add(this.oyncuadi);
            this.Controls.Add(this.btnGuncelle);
            this.Controls.Add(this.btnEkle);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtOyncuAra);
            this.Controls.Add(this.oyncuGetir);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Oyuncular";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button oyncuGetir;
        private System.Windows.Forms.TextBox txtOyncuAra;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnEkle;
        private System.Windows.Forms.Button btnGuncelle;
        private System.Windows.Forms.TextBox oyncuadi;
        private System.Windows.Forms.TextBox oyncusoyadi;
        private System.Windows.Forms.TextBox oyncucinsiyeti;
        private System.Windows.Forms.TextBox oyncuulkesi;
        private System.Windows.Forms.TextBox oyncuodul;
        private System.Windows.Forms.DateTimePicker oyncudgmtarihi;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}

