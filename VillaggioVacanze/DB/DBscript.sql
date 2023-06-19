
USE [VillaggioVacanze]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attrazioni]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attrazioni](
	[IdAttrazione] [uniqueidentifier] NOT NULL,
	[Titolo] [varchar](250) NOT NULL,
	[Descrizione] [nvarchar](max) NULL,
 CONSTRAINT [PK__Attrazio__5888AD95CF92046C] PRIMARY KEY CLUSTERED 
(
	[IdAttrazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CrossAttrazioniPeriodi]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrossAttrazioniPeriodi](
	[id] [uniqueidentifier] NOT NULL,
	[idAttrazione] [uniqueidentifier] NULL,
	[fromData] [date] NULL,
	[toData] [date] NULL,
	[numPosti] [int] NULL,
	[attivo] [bit] NULL,
	[prezzo] [int] NULL,
 CONSTRAINT [PK_Cross_AttrazionePeriodo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 19/06/2023 19:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[Id] [uniqueidentifier] NOT NULL,
	[IdUtente] [nvarchar](450) NOT NULL,
	[IdCrossAttrazionePeriodo] [uniqueidentifier] NOT NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[Attiva] [bit] NULL,
	[NumPostiPrenotati] [int] NOT NULL,
 CONSTRAINT [PK__Prenotaz__DF8A63498811AEE8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 
GO
INSERT [dbo].[AspNetRoleClaims] ([Id], [ClaimType], [ClaimValue], [RoleId]) VALUES (1, N'CANDOANYTHING', N'1', N'b5dad443-fd55-408a-8039-771d684dffd3')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'b5dad443-fd55-408a-8039-771d684dffd3', N'52ea3c72-81db-43fe-9f18-a2c0fadc22b8', N'Admin', N'ADMIN')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c9ce6f6-3608-4eb6-b752-ae6c49c68f07', N'b5dad443-fd55-408a-8039-771d684dffd3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'080fb865-cf53-4e35-96b1-5a8802463e4b', 0, N'd4d9d4c6-f2d0-43c4-b3d1-858b21be8481', N'giacomo@aa.it', 0, 1, NULL, N'GIACOMO@AA.IT', N'GIACOMO', N'AQAAAAEAACcQAAAAEHb7kiOzQB7BgGqMo3Md6nl4iWnxe7WjbOFAZTywSqJUZwjzLI2/xuALEn/KxKQudg==', NULL, 0, N'RZ33AQJMLKPEZSPLXN5AUFWXTZRWEZEB', 0, N'giacomo', N'giacomo', N'rossi')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'0cb9a6f3-d2bc-4006-81c5-94e162e0525d', 0, N'9a9aa103-7018-4341-b59b-976cdcbe4473', N'riccardo@aa.it', 0, 1, NULL, N'RICCARDO@AA.IT', N'RICCARDO', N'AQAAAAEAACcQAAAAEAbErwnZ93bvJcyEvImRvESRowbiZNm50dS4rBPn1RfXf8W0pESkTWFpYf0Ll3bisA==', NULL, 0, N'2JXB7XX46M4V3DZOTFTGE7LCIXFC3GAT', 0, N'riccardo', N'fwq', N'fw')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'1209194b-033a-453c-b0df-189ff9ace735', 0, N'9d837dd9-be29-432f-a57f-8224e28ce077', N'mario@rossi.it', 0, 1, NULL, N'MARIO@ROSSI.IT', N'MARIO.ROSSI', N'AQAAAAEAACcQAAAAELqUIjb0aHGnqBA0meT+f3EVBBROLbGAezG6oaUMblZVg0Vsqxz4ba842XKsPzsRXQ==', NULL, 0, N'E4Q6KC2T7BPTU5NSXN5JGD73VYXQF72F', 0, N'mario.rossi', N'mario', N'rossi')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'5d3c095a-4a11-4dcf-be97-7c7ea17e6c20', 0, N'71676140-a955-48bd-8984-fa3fce0fc309', N'vanessa@gmail.com', 0, 1, NULL, N'VANESSA@GMAIL.COM', N'VANESSA', N'AQAAAAEAACcQAAAAEIlkkJtbMcjO5/Ba8vLc1NDt0CCUn5EiZkU0mpfHFS7Vj9vsTtJTSc9hc+V5mnD2hg==', NULL, 0, N'WJJVBKKP4ALAXBS5TJZGSPT6NP6NQVOB', 0, N'vanessa', N'vanessa', N'rossi')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'7c9ce6f6-3608-4eb6-b752-ae6c49c68f07', 0, N'cc301b4d-1e2f-4afb-b1fa-5d7fb58b75c8', N'admin@admin.it', 0, 1, NULL, N'ADMIN@ADMIN.IT', N'ADMIN', N'AQAAAAEAACcQAAAAELFPK0u9uP9pn57xNTFSlZoCCnWFKOa0n7sOXyw5tfvCNL3KWV6EOSpPHvTrt2bMcA==', NULL, 0, N'7GHLEULZURQQZNB6CTFJPBQPMDJQRYUP', 0, N'Admin', N'Admin', N'Admin')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'93e973b9-06b8-4c0a-8c2c-4091de985630', 0, N'c4f87914-1478-4c81-9ae3-a2667e6752b8', N'sf@a.it', 0, 1, NULL, N'SF@A.IT', N'SD', N'AQAAAAEAACcQAAAAEJgu4E3cam03c4GEXxYOihQjgtdbW8dxZJvsLIezgVdeH8Sh7tF17Ajtmb4UeeVqyA==', NULL, 0, N'EGY23P6RXSUX7AAOKQESKE67OG7GZC43', 0, N'sd', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'94c414bb-bb2e-46d5-8b57-aaf9588331bd', 0, N'f40fd301-add4-4154-a82e-3354f9d44546', N'dag@aa.it', 0, 1, NULL, N'DAG@AA.IT', N'DAGNIELE', N'AQAAAAEAACcQAAAAEIR68/UzpKnEEBvLXZo7LQwtNztxvrVPXBrDXpF58ODegPOsIe4M3kXHuyKWg2oOlA==', NULL, 0, N'CEFIUNLCZBIRHYWYEK6VKZIDMPAHSWSB', 0, N'dagniele', N'daniele', N'verdi')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'c806dd7e-ddcd-4b64-bdcf-7fde380b3dbe', 0, N'2d4bcd4a-145e-494f-a146-67c35462a748', N'sss@ss.it', 0, 1, NULL, N'SSS@SS.IT', N'SSSS', N'AQAAAAEAACcQAAAAEGAVUD4lb+uLKsrlqVL5wDUAstbDShmcbX4QhJ4Mf73aKyOE2tFk8vqLc/2RrmUeCg==', NULL, 0, N'C7MORAK25JNO53D446OBWGJ4JMMZHG3Y', 0, N'ssss', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'cc2d23db-acf3-43dd-a5c2-752f8a28640d', 0, N'c9d55f4b-dd45-4410-97c0-b2f7eaa521a1', N'raffaella.puca@gmail.com', 0, 1, NULL, N'RAFFAELLA.PUCA@GMAIL.COM', N'RAFFAELLA', N'AQAAAAEAACcQAAAAELakDuXRSjhvWklOza8tGkGuTOwX4s1Z8tcGNJy6gh3dqE6l3BUGkLZgrRyB2JTDmg==', NULL, 0, N'LPPFDXQOILYDV66AXZUGSGUROM3K362W', 0, N'raffaella', N'raffaella', N'bianchi')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'f19cd5ba-db70-49e4-8b7f-1e94577c596a', 0, N'7a69b122-a06a-4de2-8c59-2c248d54779d', N'davide@aa.it', 0, 1, NULL, N'DAVIDE@AA.IT', N'DAVIDE', N'AQAAAAEAACcQAAAAECq2Uu4v94XkSrZMfv6ixBeEyx9/11Wjkr1hsdElsFquSlfGGWCPv+AMxpS4GHJ7zw==', NULL, 0, N'TLPJTJHNLAZACDWYQ5I3QUZ6YB652BYG', 0, N'davide', N'davide', N'blu')
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'fc669348-822f-483c-85b3-6cee82cd92e5', N'Maldive relax and wellness', N'Un arcipelago incontaminato e una barriera corallina da sogno. Le Maldive sono il posto ideale per ritrovare tranquillità ed energia e per concedersi una pausa eccezionale dalla quotidianità.
')
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'd51ba505-a102-44a5-94b2-8277141a9fc0', N'Giappone wild and free', N'Un viaggio unico alla scoperta di grandi metropoli, paesaggi montuosi del Monte Fuji, nuove culture. Una vacanza nel Sol Levante consente di entrare in contatto con la spiritualità mistica del Paese, visitare le splendide aree naturalistiche dell’entroterra e assaporare la famosa cucina giapponese.
')
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'824b7029-b553-425e-b3e9-d7e597fcb250', N'Islanda on the road', N'La natura è la protagonista assoluta di qualsiasi viaggio in Islanda, e regala scenari irreali che è impossibile trovare altrove. Un mondo a parte dove le leggende diventano realtà, fatto di geyser, vulcani, distese laviche, spiagge nere e calde sorgenti in cui fare il bagno anche in inverno.')
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'2498ffa0-0fe2-414d-bcca-00b3a178e1a2', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1500)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'0feea80b-7c92-4ac0-94c7-1400ede68461', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'fd6aece4-ca01-470c-9ba7-1df03672b9dd', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'55ec6928-2fdf-4e20-8a52-25920dfd8f77', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 0, 0, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'db5dd142-0f1e-43aa-90b1-27c1aee3a116', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'26983d8e-4059-44be-8a05-4a96de698c87', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'deea8e3d-86e2-4135-915e-55d516eba0f7', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'ac48a0cf-115f-4e70-a6a3-619e80a4b9ed', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 0, 0, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'c5e7ade1-8713-4247-9c04-77e5d3c713e0', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 5, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'3858b3f1-0690-4b6d-a848-900d2f220c83', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'6c2a3113-11dd-4402-b68c-af7b8744f4b5', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'5b8e7e96-fc07-4cdb-979d-b56bcc65d3f2', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 0, 0, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'2391e2d8-66aa-440f-bfb9-ce3f72f0286e', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 0, 0, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'3c1d2e3a-6fbf-4064-9a7b-e03c54fd03eb', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 0, 0, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'6887af7d-9761-4f4e-8189-e39ba8e46794', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 7, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'a064513f-b8a0-4980-8275-f1e66238be0f', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'de449e11-d7fe-4a09-ba66-f2f23aa18f04', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'3efbd70e-729c-458a-bbe5-f60e5d702fc3', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-03-01' AS Date), CAST(N'2023-03-10' AS Date), 3, 1, 1700)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'438267c4-2e80-4b8e-a089-fc9194316511', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1600)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'7fceed8e-69ed-4d00-0af3-08db70c8e514', N'5d3c095a-4a11-4dcf-be97-7c7ea17e6c20', N'55ec6928-2fdf-4e20-8a52-25920dfd8f77', CAST(N'2023-06-19' AS Date), NULL, NULL, 4)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'654c760a-4e5f-43c8-0af4-08db70c8e514', N'5d3c095a-4a11-4dcf-be97-7c7ea17e6c20', N'55ec6928-2fdf-4e20-8a52-25920dfd8f77', CAST(N'2023-06-19' AS Date), NULL, NULL, 2)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'268aa6e5-e2c5-4a27-0af5-08db70c8e514', N'5d3c095a-4a11-4dcf-be97-7c7ea17e6c20', N'5b8e7e96-fc07-4cdb-979d-b56bcc65d3f2', CAST(N'2023-06-19' AS Date), NULL, NULL, 3)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'2bc7589a-5074-4cfe-0af6-08db70c8e514', N'94c414bb-bb2e-46d5-8b57-aaf9588331bd', N'3c1d2e3a-6fbf-4064-9a7b-e03c54fd03eb', CAST(N'2023-06-19' AS Date), NULL, NULL, 2)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'cd09be80-fa85-4874-0af7-08db70c8e514', N'94c414bb-bb2e-46d5-8b57-aaf9588331bd', N'6887af7d-9761-4f4e-8189-e39ba8e46794', CAST(N'2023-06-19' AS Date), NULL, NULL, 3)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'17b72b8f-2f68-4dc0-0af8-08db70c8e514', N'cc2d23db-acf3-43dd-a5c2-752f8a28640d', N'c5e7ade1-8713-4247-9c04-77e5d3c713e0', CAST(N'2023-06-19' AS Date), NULL, NULL, 5)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'60119f9e-b3f3-4e72-0afa-08db70c8e514', N'cc2d23db-acf3-43dd-a5c2-752f8a28640d', N'2391e2d8-66aa-440f-bfb9-ce3f72f0286e', CAST(N'2023-06-19' AS Date), NULL, NULL, 7)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'85d66bb6-051c-47ba-5981-08db70d4972a', N'1209194b-033a-453c-b0df-189ff9ace735', N'55ec6928-2fdf-4e20-8a52-25920dfd8f77', CAST(N'2023-06-19' AS Date), NULL, NULL, 4)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'783b6900-1ced-4d1e-5982-08db70d4972a', N'1209194b-033a-453c-b0df-189ff9ace735', N'ac48a0cf-115f-4e70-a6a3-619e80a4b9ed', CAST(N'2023-06-19' AS Date), NULL, NULL, 6)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'b71a5d31-1126-45b3-5983-08db70d4972a', N'1209194b-033a-453c-b0df-189ff9ace735', N'5b8e7e96-fc07-4cdb-979d-b56bcc65d3f2', CAST(N'2023-06-19' AS Date), NULL, NULL, 7)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'3697c10e-daac-4154-5984-08db70d4972a', N'1209194b-033a-453c-b0df-189ff9ace735', N'2391e2d8-66aa-440f-bfb9-ce3f72f0286e', CAST(N'2023-06-19' AS Date), NULL, NULL, 3)
GO
INSERT [dbo].[Prenotazioni] ([Id], [IdUtente], [IdCrossAttrazionePeriodo], [CreatedAt], [UpdatedAt], [Attiva], [NumPostiPrenotati]) VALUES (N'b9283877-93d0-4859-5985-08db70d4972a', N'1209194b-033a-453c-b0df-189ff9ace735', N'3c1d2e3a-6fbf-4064-9a7b-e03c54fd03eb', CAST(N'2023-06-19' AS Date), NULL, NULL, 8)
GO
ALTER TABLE [dbo].[Prenotazioni] ADD  CONSTRAINT [DF__Prenotazi__DataP__3C69FB99]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Prenotazioni] ADD  CONSTRAINT [DF__Prenotazi__Attiv__3D5E1FD2]  DEFAULT ((1)) FOR [Attiva]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CrossAttrazioniPeriodi]  WITH CHECK ADD  CONSTRAINT [FK_CrossAttrazionePeriodo_Attrazioni] FOREIGN KEY([idAttrazione])
REFERENCES [dbo].[Attrazioni] ([IdAttrazione])
GO
ALTER TABLE [dbo].[CrossAttrazioniPeriodi] CHECK CONSTRAINT [FK_CrossAttrazionePeriodo_Attrazioni]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_AspNetUsers] FOREIGN KEY([IdUtente])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_AspNetUsers]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_CrossAttrazioniPeriodi] FOREIGN KEY([IdCrossAttrazionePeriodo])
REFERENCES [dbo].[CrossAttrazioniPeriodi] ([id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_CrossAttrazioniPeriodi]
GO
USE [master]
GO
ALTER DATABASE [VillaggioVacanze] SET  READ_WRITE 
GO
