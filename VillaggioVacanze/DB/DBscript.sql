--la password dell'admin è Password01!



USE [VillaggioVacanze]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[Attrazioni]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[CrossAttrazioniPeriodi]    Script Date: 14/06/2023 09:48:12 ******/
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
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 14/06/2023 09:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[IdPrenotazioni] [uniqueidentifier] NOT NULL,
	[IdUtente] [nvarchar](450) NOT NULL,
	[IdAttrazione] [uniqueidentifier] NOT NULL,
	[DataPrenotazione] [date] NOT NULL,
	[DataModifica] [date] NOT NULL,
	[Attiva] [bit] NOT NULL,
	[NumPostiPrenotati] [int] NOT NULL,
 CONSTRAINT [PK__Prenotaz__DF8A63498811AEE8] PRIMARY KEY CLUSTERED 
(
	[IdPrenotazioni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'5d3c095a-4a11-4dcf-be97-7c7ea17e6c20', 0, N'934a2819-ac83-4bb0-a6b6-39542b549b1f', N'vanessa@gmail.com', 0, 1, NULL, N'VANESSA@GMAIL.COM', N'VANESSA', N'AQAAAAEAACcQAAAAEIlkkJtbMcjO5/Ba8vLc1NDt0CCUn5EiZkU0mpfHFS7Vj9vsTtJTSc9hc+V5mnD2hg==', NULL, 0, N'WJJVBKKP4ALAXBS5TJZGSPT6NP6NQVOB', 0, N'vanessa', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'93e973b9-06b8-4c0a-8c2c-4091de985630', 0, N'c4f87914-1478-4c81-9ae3-a2667e6752b8', N'sf@a.it', 0, 1, NULL, N'SF@A.IT', N'SD', N'AQAAAAEAACcQAAAAEJgu4E3cam03c4GEXxYOihQjgtdbW8dxZJvsLIezgVdeH8Sh7tF17Ajtmb4UeeVqyA==', NULL, 0, N'EGY23P6RXSUX7AAOKQESKE67OG7GZC43', 0, N'sd', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'94c414bb-bb2e-46d5-8b57-aaf9588331bd', 0, N'f40fd301-add4-4154-a82e-3354f9d44546', N'dag@aa.it', 0, 1, NULL, N'DAG@AA.IT', N'DAGNIELE', N'AQAAAAEAACcQAAAAEIR68/UzpKnEEBvLXZo7LQwtNztxvrVPXBrDXpF58ODegPOsIe4M3kXHuyKWg2oOlA==', NULL, 0, N'CEFIUNLCZBIRHYWYEK6VKZIDMPAHSWSB', 0, N'dagniele', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'c806dd7e-ddcd-4b64-bdcf-7fde380b3dbe', 0, N'2d4bcd4a-145e-494f-a146-67c35462a748', N'sss@ss.it', 0, 1, NULL, N'SSS@SS.IT', N'SSSS', N'AQAAAAEAACcQAAAAEGAVUD4lb+uLKsrlqVL5wDUAstbDShmcbX4QhJ4Mf73aKyOE2tFk8vqLc/2RrmUeCg==', NULL, 0, N'C7MORAK25JNO53D446OBWGJ4JMMZHG3Y', 0, N'ssss', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'cc2d23db-acf3-43dd-a5c2-752f8a28640d', 0, N'c9d55f4b-dd45-4410-97c0-b2f7eaa521a1', N'raffaella.puca@gmail.com', 0, 1, NULL, N'RAFFAELLA.PUCA@GMAIL.COM', N'RAFFAELLA', N'AQAAAAEAACcQAAAAELakDuXRSjhvWklOza8tGkGuTOwX4s1Z8tcGNJy6gh3dqE6l3BUGkLZgrRyB2JTDmg==', NULL, 0, N'LPPFDXQOILYDV66AXZUGSGUROM3K362W', 0, N'raffaella', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'f19cd5ba-db70-49e4-8b7f-1e94577c596a', 0, N'7a69b122-a06a-4de2-8c59-2c248d54779d', N'davide@aa.it', 0, 1, NULL, N'DAVIDE@AA.IT', N'DAVIDE', N'AQAAAAEAACcQAAAAECq2Uu4v94XkSrZMfv6ixBeEyx9/11Wjkr1hsdElsFquSlfGGWCPv+AMxpS4GHJ7zw==', NULL, 0, N'TLPJTJHNLAZACDWYQ5I3QUZ6YB652BYG', 0, N'davide', NULL, NULL)
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'fc669348-822f-483c-85b3-6cee82cd92e5', N'Maldive', N'un bel sogno alle maldive')
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'd51ba505-a102-44a5-94b2-8277141a9fc0', N'Giappone wild', N'un bel viaggio in giappone')
GO
INSERT [dbo].[Attrazioni] ([IdAttrazione], [Titolo], [Descrizione]) VALUES (N'824b7029-b553-425e-b3e9-d7e597fcb250', N'viaggio in islanda', N'tour a 360 per la ring road')
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'2498ffa0-0fe2-414d-bcca-00b3a178e1a2', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1500)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'3cadcafb-e079-4d98-bc9e-18be95a432a6', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-03-01' AS Date), CAST(N'2023-03-10' AS Date), 6, 1, 1300)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'9eb75bd8-b579-4ded-8c36-1cc7a53f2e8d', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-02-01' AS Date), CAST(N'2023-02-10' AS Date), 8, 1, 1600)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'96586126-ae82-43c5-8d81-3875046a0ec2', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1100)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'605d1262-c062-4e4b-a2ec-4fe51143d54b', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-10' AS Date), 10, 1, 1800)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'060afb9b-adde-444f-9702-a01f7773b376', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-03-01' AS Date), CAST(N'2023-03-10' AS Date), 6, 1, 1300)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'81e39210-7bc6-4144-9626-a17177f04dfb', N'824b7029-b553-425e-b3e9-d7e597fcb250', CAST(N'2023-02-01' AS Date), CAST(N'2023-02-10' AS Date), 8, 1, 1200)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'96011097-e05a-4e7f-98a4-af687c437dce', N'd51ba505-a102-44a5-94b2-8277141a9fc0', CAST(N'2023-02-01' AS Date), CAST(N'2023-02-10' AS Date), 8, 1, 1900)
GO
INSERT [dbo].[CrossAttrazioniPeriodi] ([id], [idAttrazione], [fromData], [toData], [numPosti], [attivo], [prezzo]) VALUES (N'3efbd70e-729c-458a-bbe5-f60e5d702fc3', N'fc669348-822f-483c-85b3-6cee82cd92e5', CAST(N'2023-03-01' AS Date), CAST(N'2023-03-10' AS Date), 6, 1, 1700)
GO
ALTER TABLE [dbo].[Prenotazioni] ADD  CONSTRAINT [DF__Prenotazi__DataP__3C69FB99]  DEFAULT (getdate()) FOR [DataPrenotazione]
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
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_Attrazioni] FOREIGN KEY([IdAttrazione])
REFERENCES [dbo].[Attrazioni] ([IdAttrazione])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_Attrazioni]
GO
USE [master]
GO
ALTER DATABASE [VillaggioVacanze] SET  READ_WRITE 
GO
