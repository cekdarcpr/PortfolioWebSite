USE [KisiselWebDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2.02.2024 19:30:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 2.02.2024 19:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Profile] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 2.02.2024 19:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 2.02.2024 19:30:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Client] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[ClientImage] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240116123811_Mig1', N'6.0.26')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [Name], [Profile], [Email], [Phone], [Title], [Description], [Image], [Status]) VALUES (1, N'Çekdar ÇAPAR', N'Full Stack Developer', N'cekdarcapar@gmail.com', N'+905312580488', N'Hakkımda', N'Ben Çekdar ÇAPAR, 25 yaşında, Mersin doğumluyum. Dış Ticaret bölümünden Dumlupınar 
Üniversitesi 2018 yılında mezun oldum. Üniversiteden mezun olduktan sonra iş hayatına atıldım kısa 
bir dönem Gümrük Müşavirliği ofisinde stajyerlik yaptım. Adobe Premiere Pro öğrenmeye başladım 
ve iş alanımı değiştirdim Sosyal Medya Uzmanı olmaya karar verdim. Sosyal medya işi yaparken 
yazılıma merak sardım ve bununla ilgili birçok eğitimler aldım. İlk başta Unity ile oyun geliştirme 
eğitimleri aldım ve Google Play’e ilk oyunumu 7 ay sonra yayınladım. Profesyonel eğitim almak için 
Arı Bilgi Eğitim Kurumundan Yazılım Uzmanlığı eğitimi(250 saat) aldım. Bu eğitim bana iyi bir temel
hazırladı ve şuanda da kendime gelişim amacıyla birçok proje geliştiriyorum.', N'/DevFolio/assets/img/testimonial-2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Title], [Description], [Phone], [Email], [Status]) VALUES (1, N'Görüşmek için', N'Yerel adresim ve iletişim bilgilerim altta bulunmaktadır. Dilediğiniz zaman iletişime geçe bilirsiniz...', N'+90 (531) 258 04 88', N'cekdarcapar@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([TestimonialID], [Client], [Comment], [ClientImage], [Status]) VALUES (1, N'Ümit KARAÇİVİ', N'Öğrencim Çekdar, projesiyle gerçekten etkileyici bir iş çıkardı! Projenin karmaşıklığına rağmen, konuyu derinlemesine anlamış ve başarıyla uygulamış. Kodlamadaki becerileri ve proje yönetimi konusundaki yeteneği beni oldukça etkiledi. Ayrıca, projenin tasarımını ve detaylarını düşünce süreciyle birleştirmesi, gerçekten profesyonel bir yaklaşım sergiliyor. Öğrencim, sorumluluk almakta ve projesini özenle tamamlamakta gösterdiği özveriyle takdirimi kazandı. Kendisini tebrik ediyor, gelecekteki projelerinde başarılar diliyorum.', N'/DevFolio/assets/img/testimonial-2.jpg', 1)
INSERT [dbo].[Testimonials] ([TestimonialID], [Client], [Comment], [ClientImage], [Status]) VALUES (3, N'Öykü Yurdagül', N'Projemdeki teknik detayları tam olarak anlamamama rağmen, bu yazılımcıyla çalışmak gerçekten harikaydı! Kendisiyle iletişim kurmak çok kolaydı ve sorularıma sabırla cevap verdi. Proje sürecindeki ilerlemeyi düzenli olarak paylaştı ve sonuç gerçekten muazzam oldu. Kendisine güvendiğim için rahat hissettim ve projemdeki değişikliklere uyum sağlamak konusundaki esnekliğini takdir ettim. Kesinlikle tavsiye ederim!', N'/DevFolio/assets/img/testimonial-4.jpg', 1)
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
