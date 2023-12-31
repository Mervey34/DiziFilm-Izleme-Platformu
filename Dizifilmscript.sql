USE [FilmProjesi]
GO
/****** Object:  Table [dbo].[DiziDetay]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiziDetay](
	[DiziDetayId] [int] IDENTITY(1,1) NOT NULL,
	[DiziId] [int] NULL,
	[DiziBolumAdi] [nvarchar](50) NULL,
	[BolumIcerik] [nvarchar](max) NULL,
	[BolumSuresi] [time](7) NULL,
	[YayinlanmaTarihi] [date] NULL,
	[SezonAdi] [nvarchar](50) NULL,
	[YasSiniri] [int] NULL,
	[DiziVideo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[DiziDetayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diziler]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diziler](
	[DiziId] [int] IDENTITY(1,1) NOT NULL,
	[DiziAdi] [nvarchar](50) NULL,
	[YonetmenId] [int] NULL,
	[KategoriId] [int] NULL,
	[BolumSayisi] [int] NULL,
	[SezonSayisi] [int] NULL,
	[Ulkesi] [nvarchar](50) NULL,
	[DiziResim] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[DiziOdul] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DiziId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiziOyuncular]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiziOyuncular](
	[DiziOyuncuId] [int] IDENTITY(1,1) NOT NULL,
	[DiziDetayId] [int] NULL,
	[OyuncuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiziOyuncuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[FilmId] [int] IDENTITY(1,1) NOT NULL,
	[FilmAdi] [nvarchar](50) NULL,
	[VizyonTarihi] [date] NULL,
	[FilmSuresi] [int] NULL,
	[Konusu] [nvarchar](max) NULL,
	[FilmOdul] [nvarchar](100) NULL,
	[YasSiniri] [int] NULL,
	[Ulkesi] [nvarchar](50) NULL,
	[FilmResim] [nvarchar](100) NULL,
	[Video] [nvarchar](max) NULL,
	[FragmanSuresi] [decimal](10, 2) NULL,
	[FragmanVideo] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
	[YonetmenId] [int] NULL,
	[KategoriId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FilmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmOyuncular]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmOyuncular](
	[FilmOyuncuId] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[OyuncuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FilmOyuncuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciDiziDetay]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciDiziDetay](
	[KullaniciDiziDetayId] [int] IDENTITY(1,1) NOT NULL,
	[DiziId] [int] NULL,
	[KullaniciId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciDiziDetayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciFilmDetay]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciFilmDetay](
	[KullaniciFilmDetayId] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[KullaniciId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciFilmDetayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[KullaniciSoyadi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](max) NULL,
	[RolId] [int] NULL,
	[TCKN] [varchar](11) NULL,
	[KullaniciMail] [nvarchar](100) NULL,
	[DogumTarihi] [date] NULL,
	[Cinsiyet] [nvarchar](5) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyuncular]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyuncular](
	[OyuncuId] [int] IDENTITY(1,1) NOT NULL,
	[OyuncuAdi] [nvarchar](50) NULL,
	[OyuncuSoyadi] [nvarchar](50) NULL,
	[DogumTarihi] [date] NULL,
	[Cinsiyet] [nvarchar](5) NULL,
	[Ulkesi] [nvarchar](50) NULL,
	[OyuncuOdulleri] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[OyuncuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roller]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetmenler]    Script Date: 26.08.2023 00:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetmenler](
	[YonetmenId] [int] IDENTITY(1,1) NOT NULL,
	[YonetmenAdi] [nvarchar](50) NULL,
	[YonetmenSoyadi] [nvarchar](50) NULL,
	[DogumTarihi] [date] NULL,
	[Cinsiyet] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[YonetmenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DiziDetay] ON 

INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (1, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (2, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (3, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (4, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (5, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (6, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (7, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (8, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (9, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (10, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
INSERT [dbo].[DiziDetay] ([DiziDetayId], [DiziId], [DiziBolumAdi], [BolumIcerik], [BolumSuresi], [YayinlanmaTarihi], [SezonAdi], [YasSiniri], [DiziVideo]) VALUES (11, 1, N'A Study in Pink', NULL, NULL, CAST(N'2010-07-25' AS Date), N'1.sezon', 13, NULL)
SET IDENTITY_INSERT [dbo].[DiziDetay] OFF
GO
SET IDENTITY_INSERT [dbo].[Diziler] ON 

INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (1, N'Sherlock', 11, 6, 13, 4, N'Birlesik Krallik', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (2, N'How I Met Your Mother.', 9, 1, 32, 2, N'ABD', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (3, N'Alexa', 8, 2, 28, 2, N'Greece', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (4, N'Breaking Bad', 4, 2, 41, 1, N'Indonesia', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (5, N'This Is Us', 1, 3, 13, 7, N'Germany', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (6, N'Rise of Empires: Ottoman', 6, 4, 16, 9, N'Turkey', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (7, N'Doctor Who', 3, 5, 24, 4, N'Ethiopia', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (8, N'Prison Break', 1, 6, 10, 5, N'USA', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (9, N'La Casa De Papel', 2, 6, 26, 3, N'China', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (10, N'Lost', 5, 7, 13, 8, N'Japan', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (11, N'The Walking Dead', 6, 8, 56, 4, N'England', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (12, N'Supernatural.', 3, 9, 7, 5, N'Indonesia', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (13, N'The Crown', 8, 10, 45, 3, N'Italy', NULL, 0, NULL)
INSERT [dbo].[Diziler] ([DiziId], [DiziAdi], [YonetmenId], [KategoriId], [BolumSayisi], [SezonSayisi], [Ulkesi], [DiziResim], [isDeleted], [DiziOdul]) VALUES (14, N'Alma', 4, 11, 15, 1, N'China', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Diziler] OFF
GO
SET IDENTITY_INSERT [dbo].[DiziOyuncular] ON 

INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (1, 1, 1)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (2, 1, 2)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (3, 1, 3)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (4, 1, 7)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (5, 2, 10)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (6, 2, 8)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (7, 3, 10)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (8, 3, 4)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (9, 3, 6)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (10, 4, 8)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (11, 4, 5)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (12, 5, 1)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (13, 10, 2)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (14, 5, 3)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (15, 6, 7)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (16, 6, 3)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (17, 6, 8)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (18, 9, 9)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (19, 7, 7)
INSERT [dbo].[DiziOyuncular] ([DiziOyuncuId], [DiziDetayId], [OyuncuId]) VALUES (20, 8, 5)
SET IDENTITY_INSERT [dbo].[DiziOyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (1, N'Hababam Sinifi', CAST(N'1975-04-01' AS Date), 90, N'Çamlica Lisesi ne yeni atanan Mahmut Hoca haylaz ögrencilerini disiplin etmeye çalisir. Ögrencilerin haylazligi disinda ciddi olaylar da yasanmaktadir.', N'YEKÜV Tüm Zamanlarin En Iyi Egitim Filmi', 13, N'Türkiye', NULL, N'Video Url', NULL, N'Fragman Url', 0, 1, 1)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (2, N'Umudunu Kaybetme', CAST(N'2007-02-03' AS Date), 117, N'The Pursuit of Happyness/Umudunu Kaybetme’de, Chris Gardner (Will Smith) iki yakasini bir araya getirmeye çalisan bir aile babasidir. Ailesini ayakta tutmak için cesurca çabalamasina ragmen, bes yasindaki oglu Christopher’in (Jaden Christopher Syre Smith) annesi (Thandie Newton) maddi zorluklarin yarattigi sürekli baski altinda direncini kaybetmek üzeredir. Artik dayanamayacagini anlayinca, istemeye istemeye evi terk eder... Artik bekar bir baba olan Chris, yilmadan, bildigi tüm satis becerilerini kullanarak daha iyi kazandiran bir isin pesine düser. Prestijli bir borsa sirketinde stajyerlik bulur ve ücret almasa da programin sonunda is ve parlak bir gelecek elde edecegini umarak kabul eder. Parasal güvencesi olmayan Chris ve oglu, kisa süre sonra oturduklari daireden çikartilirlar ve düskünler evi, otobüs duragi, tuvalet; geceyi geçirmek için bulabildikleri her yerde kalirlar. Çektigi sikintilara ragmen, Chris, babalik görevini sevgi ve özenle yerine getirmeye devam eder ve oglunun kendisine karsi duydugu sevgi ve güveni, karsisina çikan engelleri asmak için kullanir.', N'Capri Ödülleri-Yilin Filmi', 13, N'ABD', NULL, N'https://www.youtube.com/watch?v=Af1J6sp4Am8', CAST(2.22 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=Ha4EmazlcXM', 0, 2, 2)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (3, N'Titanic', CAST(N'1998-02-13' AS Date), 250, N'Insan elinden çikmis en büyük ve en gösterisli yüzen araç olan Titanic yola koyuldu. Batmaz, sarsilmaz denilen bu büyük lüks yolcu gemisinde yolculuk yapmak, 20. Yüzyilin muhtesem bir rüyasiydi. Ancak bu büyük rüya sadece 4.5 gün serecek ve anisini bir sonraki yüzyila bile tasiyacak büyüklükte bir kabusa dönüsecekti. Iste bugün bile heyecan uyandiran bu aci ancak bir o kadar da sinematografik felaket hikayesini bu kez James Cameron un yönetiminde ve sinema tarihinin gördügü en büyük bütçeyle gerçeklestirilmis son versiyonuyla izliyoruz. Geminin ilk ve son yolculuguyla örtüsen, kisa soluklu ama ölümsüz bir ask öyküsüne yer veren Cameron, Titanic kadar büyük bir ask öyküsü merkez alarak, bu bildik felaketi farkli bir tarzda anlatmak istemis. Asiklar ise son dönemde yükselen yetenekli genç oyuncular kusaginin öne çikan isimlerinden Kate Winslet ve Leonardo Di Caprio. 1998 de 14 dalda Oscar adayi olan Titanic, 11 dalda heykelcik kazandi dünyaca büyük bir felaket olan titanic sinemadada felaket etkisi yaratmistir.', N'Ingiliz Akademisi Film Ödülleri-En Iyi Kurgu', 18, N'ABD', NULL, N'https://www.youtube.com/watch?v=850v7dUarTo', CAST(2.22 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=BulFcN7DLAc', 0, 3, 3)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (4, N'3 Idiots', CAST(N'2009-11-09' AS Date), 170, N'Hindistan in en iyi mühendislik okuluna baslayan ögrencilerin hayatini anlatiyor özet olarak. Sistemin daima yaris üzerine kurulu oldugu, herkesin en iyi olmaya çabaladigi bir okulda sistemi degistirmeye çalisan bir ögrenci ve onun en yakin 2 arkadasi. Baslarindan geçenler, hayattan aslinda ne istedikleri. Ranco karakterinin basrol oynadigi film dram ve komedi türünü en iyi sekilde harmanlayip bize ögretici bir film olmakta.', N'Filmfare-En Iyi Diyalog Ödülü', 12, N'Hindistan', NULL, N'https://www.youtube.com/watch?v=jqiaFL2CrWU&list=PLVZ2Rf1cDy6dvL_pQ9WswgsU5Mw9ZQfx8', CAST(1.27 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=7_EI2gz53rs', 0, 4, 1)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (5, N'Her Çocuk Özeldir', CAST(N'2007-01-01' AS Date), 165, N'Harfleri sayilari algilama problemi yasayan bir çocugun çevresi ve ailesi tarafindan tembel gerizekali muamelesi görür. Çalismayi ögrenebilmesi için yatili okula verildikten sonra resim ögretmeni ile degisen hayati ve basarisini anlatan bir film.', N'Filmfare-En Iyi Hikâye Ödülü', 7, N'Hindistan', NULL, N'https://www.youtube.com/watch?v=nBXR6gJKYJA', CAST(2.47 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=ZA8Be1gagWA', 0, 5, 2)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (6, N'Piyanist', CAST(N'2003-02-28' AS Date), 150, N'Wladyslaw Szpilman, savas patlak verdiginde 27 yasindaydi ve Polonya nin gelecegi en parlak konser piyanistlerinden biriydi. Luftwaffe de radyo istasyonu bombalandiginda Chopin in C minor Nocturne nü çaliyordu.Tüm Yahudiler gibi o ve ailesi de evlerinden çikartilarak Varsova gettolarina sürülmüstü. Bu çok yetenekli genç adam yeni yasaminda karaborsacilarin ve isbirlikçilerin eglendigi barlarda çalmaya baslamistir.Iste bu isbirlikçilerden biri onu ve ailesini ölüme götüren esir kampi trenlerinden birinden kurtarmistir. Savas fisiltilari, direnisçiler ve sürpriz bir Alman subayi sayesinde Szpilman savasta hayatta kalmayi basarir.', N'César-En Iyi Erkek Oyuncu Ödülü', 16, N'Fransa,Almanya,Polonya,Ingiltere', NULL, N'https://www.youtube.com/watch?v=cuRxpczjg3Y', CAST(1.25 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=BFwGqLa_oAo', 0, 6, 4)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (7, N'Harry Potter and the Sorcerer s Stone', CAST(N'2002-02-01' AS Date), 152, N'Harry Potter, muggle (büyücü yada cadi olmayan insanlar) teyzesi ve enistesiyle siradan ve zorluklarla dolu bir hayati yasarken, yilanlarla konusabildiginin, kizginlik öfkesi sirasinda esyalari hareket ettirebildiginin farkina varacaktir. Hogwarts Büyücülük ve Cadilik Okulu ndan kabul edildigini belirten mektup ise hayatinin siradanligini degistirecektir. Artik o bir büyücü adayidir.', N'Satellite-En Iyi Yeni Yetenek Ödülü', 9, N'Ingiltere,ABD', NULL, N'https://www.youtube.com/watch?v=6ZYmbg5jbAA', CAST(2.16 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=VyHV0BRtdxo', 0, 7, 5)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (8, N'Nefes: Vatan Sagolsun', CAST(N'2009-10-16' AS Date), 128, N' 2365 metre yükseklikteki Karabal Jandarma Karakolu nu korumakla görevlendirilen bir yüzbasi komutasindaki kirk askerin hikayesidir. Büyük çapli bir sinir ötesi operasyonun baslamasiyla, telsiz röle istasyonunun bulundugu Karabal Jandarma Karakolu nun önemi daha da artmistir. Çünkü operasyona katilan birliklerin haberlesmesi artik bu röle istasyonu ile saglanacaktir. Güneydogu’da Irak sinirina yakin bir ilçedeki Komando Tugayi nda görevli Yüzbasi ve emrindeki askerler, tipi ve karla mücadele ederek iki gün süren intikalin ardindan karakola ulasirlar. Karakol da bulunan Jandarma askerleri ile birlikte geçirdikleri günlerde aciyi, sevinci ve hasreti paylasirlar; son güne kadar karakolu ve telsizi koruma görevlerini yerine getirmek için mücadele ederler.', N'Yesilçam-En Iyi Film', 13, N'Türkiye', NULL, N'https://www.youtube.com/watch?v=sQQSBrYfEMM', CAST(1.13 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=KyNgEddjK0A', 0, 8, 6)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (9, N'Akil Oyunlari', CAST(N'2002-03-08' AS Date), 135, N'John Forbes Nash Jr., genç yasinda gelistirdigi kuramlarla matematik dünyasinin bir numarali ismi haline gelir. Fakat kisa süre içerisinde bencilligi ve kendine olan asiri güveni sonucunda olusan kisisel problemleri ile bas edemez duruma düser. Dahilik ile delilik arasindaki ince çizgide, delilik tarafina dogru sürüklenir.', N'Film Elestirmenleri-En Iyi Film Ödülü', 16, N'ABD', NULL, N'https://www.youtube.com/watch?v=d8prs4pXeKc', CAST(2.16 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=fiZ1Cr0BKx8', 0, 9, 3)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [VizyonTarihi], [FilmSuresi], [Konusu], [FilmOdul], [YasSiniri], [Ulkesi], [FilmResim], [Video], [FragmanSuresi], [FragmanVideo], [isDeleted], [YonetmenId], [KategoriId]) VALUES (10, N'Selvi Boylum Al Yazmalim', CAST(N'2010-05-14' AS Date), 90, N'Kirgiz yazar Cengiz Aytmatov un (Kirmizi Esarp) adli romanindan uyarlanmistir. Kamyon soförü Ilyas, Istanbul dan Asya nin kaldigi köye gelir. Birbirlerine asik olup evlenirler. Çocuklarinin adini Samet koyarlar. Ilyas, kamyoncu oldugu için sik sik yollara çikar ve Asya, Samet le yalniz kalir. Bir gün yine yola çikan Ilyas, eve dönmez. Asya, bu aciya dayanamaz ve ogluyla birlikte yollara düser. Yolda Cemsit adinda bir adamla karsilasirlar. Cemsit onlara kol kanat gerer. Birlikte yasamaya baslarlar. Bir gün Ilyas karsilarina çikar. Asya, artik bir seçim yapmak zorundadir. Yillarca Türk halkinin en sevdigi filmlerin basinda gelen Selvi Boylum Al Yazmalim, 2010 yilinda restore edilmis haliyle yeniden vizyona girdi.', N'Uluslararasi Altin Portakal Film Festivali -En Iyi FIlm', 7, N'Türkiye', NULL, N'https://www.youtube.com/watch?v=3wkO9tKKPTo', CAST(2.43 AS Decimal(10, 2)), N'https://www.youtube.com/watch?v=MGYfWv6jt0A', 0, 10, 2)
SET IDENTITY_INSERT [dbo].[Filmler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmOyuncular] ON 

INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (1, 1, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (2, 1, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (3, 1, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (4, 1, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (5, 1, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (6, 1, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (7, 1, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (8, 1, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (9, 2, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (10, 2, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (11, 2, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (12, 2, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (13, 2, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (14, 3, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (15, 3, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (16, 3, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (17, 3, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (18, 3, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (19, 3, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (20, 4, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (21, 4, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (22, 4, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (23, 4, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (24, 4, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (25, 4, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (26, 4, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (27, 4, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (28, 4, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (29, 4, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (30, 5, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (31, 5, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (32, 5, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (33, 5, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (34, 5, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (35, 5, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (36, 5, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (37, 5, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (38, 6, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (39, 6, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (40, 6, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (41, 6, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (42, 6, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (43, 6, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (44, 6, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (45, 6, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (46, 6, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (47, 7, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (48, 7, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (49, 7, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (50, 7, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (51, 8, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (52, 8, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (53, 8, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (54, 8, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (55, 8, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (56, 8, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (57, 8, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (58, 8, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (59, 9, 3)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (60, 9, 5)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (61, 9, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (62, 9, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (63, 9, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (64, 9, 10)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (65, 10, 1)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (66, 10, 2)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (67, 10, 4)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (68, 10, 6)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (69, 10, 7)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (70, 10, 8)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (71, 10, 9)
INSERT [dbo].[FilmOyuncular] ([FilmOyuncuId], [FilmId], [OyuncuId]) VALUES (72, 10, 10)
SET IDENTITY_INSERT [dbo].[FilmOyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (1, N'Komedi')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (2, N'Dram')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (3, N'Romantik')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (4, N'Savas')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (5, N'Fantastik')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (6, N'Aksiyon')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (7, N'Macera')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (8, N'Korku')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (9, N'Fantastik')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (10, N'Belgesel')
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi]) VALUES (11, N'Gerilim')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciDiziDetay] ON 

INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (1, 1, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (2, 1, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (3, 1, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (4, 1, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (5, 1, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (6, 1, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (7, 1, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (8, 1, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (9, 1, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (10, 1, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (11, 2, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (12, 2, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (13, 2, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (14, 2, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (15, 2, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (16, 2, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (17, 2, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (18, 2, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (19, 2, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (20, 2, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (21, 3, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (22, 3, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (23, 3, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (24, 3, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (25, 3, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (26, 3, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (27, 3, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (28, 3, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (29, 3, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (30, 3, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (31, 4, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (32, 4, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (33, 4, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (34, 4, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (35, 4, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (36, 4, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (37, 4, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (38, 4, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (39, 4, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (40, 4, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (41, 5, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (42, 5, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (43, 5, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (44, 5, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (45, 5, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (46, 5, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (47, 5, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (48, 5, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (49, 5, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (50, 5, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (51, 6, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (52, 6, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (53, 6, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (54, 6, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (55, 6, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (56, 6, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (57, 6, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (58, 6, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (59, 6, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (60, 6, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (61, 7, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (62, 7, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (63, 7, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (64, 7, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (65, 7, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (66, 7, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (67, 7, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (68, 7, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (69, 7, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (70, 7, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (71, 8, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (72, 8, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (73, 8, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (74, 8, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (75, 8, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (76, 8, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (77, 8, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (78, 8, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (79, 8, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (80, 8, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (81, 9, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (82, 9, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (83, 9, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (84, 9, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (85, 9, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (86, 9, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (87, 9, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (88, 9, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (89, 9, 9)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (90, 9, 10)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (91, 10, 1)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (92, 10, 2)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (93, 10, 3)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (94, 10, 4)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (95, 10, 5)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (96, 10, 6)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (97, 10, 7)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (98, 10, 8)
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (99, 10, 9)
GO
INSERT [dbo].[KullaniciDiziDetay] ([KullaniciDiziDetayId], [DiziId], [KullaniciId]) VALUES (100, 10, 10)
SET IDENTITY_INSERT [dbo].[KullaniciDiziDetay] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciFilmDetay] ON 

INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (1, 1, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (2, 1, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (3, 1, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (4, 1, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (5, 1, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (6, 1, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (7, 1, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (8, 1, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (9, 1, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (10, 1, 10)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (11, 2, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (12, 2, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (13, 2, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (14, 2, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (15, 2, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (16, 2, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (17, 2, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (18, 2, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (19, 2, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (20, 2, 10)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (21, 3, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (22, 3, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (23, 3, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (24, 3, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (25, 3, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (26, 3, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (27, 3, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (28, 3, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (29, 3, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (30, 3, 10)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (31, 4, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (32, 4, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (33, 4, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (34, 4, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (35, 4, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (36, 4, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (37, 4, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (38, 4, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (39, 4, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (40, 4, 10)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (41, 5, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (42, 5, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (43, 5, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (44, 5, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (45, 5, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (46, 5, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (47, 5, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (48, 5, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (49, 5, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (50, 5, 10)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (51, 6, 1)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (52, 6, 2)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (53, 6, 3)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (54, 6, 4)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (55, 6, 5)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (56, 6, 6)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (57, 6, 7)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (58, 6, 8)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (59, 6, 9)
INSERT [dbo].[KullaniciFilmDetay] ([KullaniciFilmDetayId], [FilmId], [KullaniciId]) VALUES (60, 6, 10)
SET IDENTITY_INSERT [dbo].[KullaniciFilmDetay] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (1, N'Fatma', N'Özer', N'TL5E16C9M7', 1, N'68912361107', N'vehicula@convallis.tel', CAST(N'2005-02-09' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (2, N'Zülfikar', N'Güler', N'GM6G27K4T5', 2, N'57905409149', N'varius@tortor.name', CAST(N'2010-01-18' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (3, N'Deniz', N'Mert', N'SW6F63R9C4', 3, N'71775163168', N'ut@pretium.mh', CAST(N'2002-01-11' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (4, N'Yavuz', N'Tuna', N'OF9M41R8Y3', 4, N'26353729616', N'a@sed.nz', CAST(N'1993-01-10' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (5, N'Sila', N'Agaoglu', N'JW5C56K8J3', 1, N'76071415229', N'diam@mauris.pm', CAST(N'1991-10-17' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (6, N'Serap', N'Fettahoglu', N'LZ1S63M1T1', 1, N'27143020096', N'vestibulum@et.cn', CAST(N'1994-02-16' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (7, N'Ahmet', N'Çilingir', N'MQ2S27K4F9', 1, N'18216144144', N'ipsum@non.lk', CAST(N'1983-01-06' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (8, N'Mehmet', N'Sabanci', N'FB3J79M1V4', 1, N'55097292657', N'ut@Mauris.asia', CAST(N'1985-06-14' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (9, N'Zeynep', N'Koç', N'CI1R63D2Q6', 2, N'23652096445', N'consectetur@euismod.mg', CAST(N'2011-02-28' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (10, N'Irem', N'Günay', N'OH3Q74Z5H8', 3, N'97865303923', N'Integer@vel.pt', CAST(N'1994-10-12' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (11, N'Kaan', N'Yildirim', N'MO8A96O4I5', 1, N'62577067696', N'quam@eu.bz', CAST(N'1986-03-27' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (12, N'Azra', N'Öztürk', N'GV1Z82A7A8', 1, N'72029676657', N'facilisis@Integer.ms', CAST(N'1984-10-13' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (13, N'Ekrem', N'Sezgin', N'EJ4U45C5K6', 1, N'43700893946', N'leo@ac.museum', CAST(N'1990-12-14' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (14, N'Sümeyye', N'Günes', N'BD8F11N6M9', 2, N'95142123869', N'in@at.pe', CAST(N'2015-08-14' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (15, N'Bilal', N'Yildiz', N'RJ4S18L3U2', 3, N'46442043315', N'tristique@rutrum.pm', CAST(N'1990-06-28' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (16, N'Ali', N'Güven', N'FB5H82W2O2', 1, N'53993091146', N'risus@purus.bt', CAST(N'2003-02-10' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (17, N'Selçuk', N'Bayrak', N'PF9J44B7Q1', 1, N'83514389152', N'aliquet@malesuada.us', CAST(N'1991-05-06' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (18, N'Gaye', N'Yazici', N'RE9Q38N4E1', 1, N'96853838854', N'libero@mauris.fm', CAST(N'2002-03-14' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (19, N'Hande', N'Yüksek', N'AI8M98B5E2', 1, N'27601705773', N'velit@Nulla.tj', CAST(N'2001-10-09' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (20, N'Melek', N'Rüzgar', N'RL7Y96I8G5', 1, N'70587161939', N'libero@magna.bv', CAST(N'1995-11-05' AS Date), N'Erkek', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (21, N'Nurgül', N'Sezgin', N'1234Aa', 4, N'70587161940', N'100kadinyazilimci@gmail.com', CAST(N'1995-10-05' AS Date), N'Kiz', 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [KullaniciSoyadi], [Sifre], [RolId], [TCKN], [KullaniciMail], [DogumTarihi], [Cinsiyet], [isDeleted]) VALUES (22, N'Nilüfer', N'Kiran', N'1234Aa', 4, N'70587161941', NULL, CAST(N'2000-10-30' AS Date), N'Kiz', 0)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[Oyuncular] ON 

INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (1, N'Adam', N'Sandler', CAST(N'1969-09-09' AS Date), N'E', N'ABD', N'CinemaCon 2014 Yilin Erkek Yildizi Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (2, N'Ahmet Mümtaz', N'Taylan', CAST(N'1965-09-12' AS Date), N'E', N'Türkiye', N'23. Sadri Alisik Tiyatro ve Sinema Ödülleri Yilin En Basarili Oyuncusu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (3, N'Alicia', N'Vikander', CAST(N'1988-10-03' AS Date), N'K', N'isveç', N'2016 The Danish Girl Ödülleri En Iyi Yardimci Kadin Oyuncu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (4, N'Altan', N'Erkekli', CAST(N'1955-11-18' AS Date), N'E', N'Türkiye', N'2018 Altin Portakal En Iyi Erkek Oyuncu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (5, N'Angelina', N'Jolie', CAST(N'1975-06-04' AS Date), N'K', N'ABD', N'1999 En Iyi Yardimci Kadin Oyuncu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (6, N'Arsen', N'Gürzap', CAST(N'1950-01-01' AS Date), N'K', N'Türkiye', N'Sadri Alisik En Iyi Kadin Oyuncu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (7, N'Bergüzar', N'Korel', CAST(N'1957-08-27' AS Date), N'K', N'Türkiye', N'2006 Altin Kelebek Ödülleri En Iyi Kadin Oyuncu Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (8, N'Bill', N'Nighy', CAST(N'1949-12-12' AS Date), N'E', N'Ingiltere', N'2015 Tony Ödülü En Iyi Erkek Oyuncu')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (9, N'Brad', N'Pitt', CAST(N'1963-12-18' AS Date), N'E', N'ABD', N'2011 New York Film Elestirmenleri Birligi En Iyi Erkek Oyuncu')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (10, N'Cansel', N'Elçin', CAST(N'1973-09-20' AS Date), N'E', N'Türkiye', N'2008 Beykent Üniversitesi 7. Iletisim Ödülleri En Iyi Erkek Dizi Oyuncusu')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (29, N'Yağız Alp', N'KOÇ', CAST(N'2016-02-27' AS Date), N'E', N'Türkiye', N'En Tatlı Yeğen Ödülü')
INSERT [dbo].[Oyuncular] ([OyuncuId], [OyuncuAdi], [OyuncuSoyadi], [DogumTarihi], [Cinsiyet], [Ulkesi], [OyuncuOdulleri]) VALUES (30, N'Merve', N'Koç', CAST(N'1988-10-03' AS Date), N'K', N'Tr', N'Alfa')
SET IDENTITY_INSERT [dbo].[Oyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (1, N'Yetiskin Kullanici')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (2, N'Çocuk Kullanici')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (3, N'Editör')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (4, N'Admin')
SET IDENTITY_INSERT [dbo].[Roller] OFF
GO
SET IDENTITY_INSERT [dbo].[Yonetmenler] ON 

INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (1, N'Ertem', N'Egilmez', CAST(N'1929-02-18' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (2, N'Gabriele', N'Muccino', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (3, N'James', N'Cameron', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (4, N'Rajkumar', N'Hirani', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (5, N'Aamir', N'Khan', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (6, N'Roman', N'Polanski', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (7, N'Chris', N'Columbus', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (8, N'Levent', N'Semerci', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (9, N'Ron', N'Howward', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (10, N'Atif', N'Yilmaz', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (11, N'Michael', N'Hurst', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (12, N'Pamela', N'Fryman', CAST(N'1959-08-19' AS Date), N'K')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (13, N'Guy', N'Ritchie', CAST(N'1968-09-10' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (14, N'Heather', N'Wordham', NULL, N'K')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (15, N'Vince', N'Gilligan', CAST(N'1967-02-10' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (16, N'Heather', N'Wordham', NULL, N'K')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (17, N'Don', N'Fogelman', CAST(N'1976-02-19' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (18, N'Emre', N'Sahin', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (19, N'Emre', N'Sahin', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (20, N'Paul ', N'Scheuring', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (21, N'Álex', N'Pina ', CAST(N'1967-06-23' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (22, N'Bobby', N'Roth', NULL, N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (23, N'Jack', N'Bender', CAST(N'1949-09-25' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (24, N'Frank', N'Darabont', CAST(N'1959-01-28' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (25, N'Kim', N'Manners', CAST(N'1951-01-13' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (26, N'Peter', N'Morgan', CAST(N'1963-04-10' AS Date), N'E')
INSERT [dbo].[Yonetmenler] ([YonetmenId], [YonetmenAdi], [YonetmenSoyadi], [DogumTarihi], [Cinsiyet]) VALUES (27, N'Sergio Gutiérrez', N'Sánchez,', NULL, N'E')
SET IDENTITY_INSERT [dbo].[Yonetmenler] OFF
GO
ALTER TABLE [dbo].[DiziDetay]  WITH CHECK ADD FOREIGN KEY([DiziId])
REFERENCES [dbo].[Diziler] ([DiziId])
GO
ALTER TABLE [dbo].[Diziler]  WITH CHECK ADD FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Diziler]  WITH CHECK ADD FOREIGN KEY([YonetmenId])
REFERENCES [dbo].[Yonetmenler] ([YonetmenId])
GO
ALTER TABLE [dbo].[DiziOyuncular]  WITH CHECK ADD FOREIGN KEY([DiziDetayId])
REFERENCES [dbo].[DiziDetay] ([DiziDetayId])
GO
ALTER TABLE [dbo].[DiziOyuncular]  WITH CHECK ADD FOREIGN KEY([OyuncuId])
REFERENCES [dbo].[Oyuncular] ([OyuncuId])
GO
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD FOREIGN KEY([YonetmenId])
REFERENCES [dbo].[Yonetmenler] ([YonetmenId])
GO
ALTER TABLE [dbo].[FilmOyuncular]  WITH CHECK ADD FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([FilmId])
GO
ALTER TABLE [dbo].[FilmOyuncular]  WITH CHECK ADD FOREIGN KEY([OyuncuId])
REFERENCES [dbo].[Oyuncular] ([OyuncuId])
GO
ALTER TABLE [dbo].[KullaniciDiziDetay]  WITH CHECK ADD FOREIGN KEY([DiziId])
REFERENCES [dbo].[Diziler] ([DiziId])
GO
ALTER TABLE [dbo].[KullaniciDiziDetay]  WITH CHECK ADD FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanicilar] ([KullaniciId])
GO
ALTER TABLE [dbo].[KullaniciFilmDetay]  WITH CHECK ADD FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([FilmId])
GO
ALTER TABLE [dbo].[KullaniciFilmDetay]  WITH CHECK ADD FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanicilar] ([KullaniciId])
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD FOREIGN KEY([RolId])
REFERENCES [dbo].[Roller] ([RolId])
GO
