USE [Survey]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 22.06.2022 17:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [nvarchar](10) NULL,
	[PersonName] [nvarchar](50) NULL,
	[UserCode] [nvarchar](50) NULL,
	[Score] [nvarchar](10) NULL,
	[IsComplete] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerLine]    Script Date: 22.06.2022 17:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerLine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnswerId] [int] NULL,
	[Question] [nvarchar](250) NULL,
	[Answer] [nvarchar](10) NULL,
	[Comment] [nvarchar](250) NULL,
 CONSTRAINT [PK_AnswerLine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 22.06.2022 17:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](50) NULL,
	[Code] [nvarchar](10) NULL,
	[Password] [nvarchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [nvarchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 22.06.2022 17:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionLine] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (2, N'123456', N'Mesut Kaya', N'1234', N'50', 0, CAST(N'2022-06-19T19:00:28.593' AS DateTime), N'deneme')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (3, N'12345', N'Ahmet Doğan', N'1234', NULL, NULL, CAST(N'2022-06-19T19:03:44.813' AS DateTime), N'deneme')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (12, N'101', N'aaa', N'1234', N'50', 0, CAST(N'2022-06-20T18:17:39.707' AS DateTime), N'deneme')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (13, N'321', N'Mustafa Can', N'12', N'40', 0, CAST(N'2022-06-20T19:42:05.277' AS DateTime), N'aa')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (14, N'12345', N'Ahmet Doğan', N'412', N'60', 0, CAST(N'2022-06-22T15:52:33.217' AS DateTime), N'Canan Tan')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (15, N'12345', N'Ahmet Doğan', N'12', N'40', 0, CAST(N'2022-06-22T15:54:54.283' AS DateTime), N'aa')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (16, N'321', N'Mustafa Can', N'412', N'0', 0, CAST(N'2022-06-22T15:55:07.993' AS DateTime), N'Canan Tan')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (17, N'123456', N'Mesut Kaya', N'321', N'100', 1, CAST(N'2022-06-22T16:40:11.407' AS DateTime), N'Mustafa Can')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (18, N'123456', N'Mesut Kaya', N'12', N'40', 0, CAST(N'2022-06-22T16:52:03.117' AS DateTime), N'aa')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (19, N'412', N'Canan Tan', N'12', N'80', 1, CAST(N'2022-06-22T16:52:45.583' AS DateTime), N'aa')
INSERT [dbo].[Answer] ([Id], [PersonCode], [PersonName], [UserCode], [Score], [IsComplete], [CreateDate], [CreateBy]) VALUES (20, NULL, N'Lütfen Kişi Seçiniz', N'12', NULL, NULL, CAST(N'2022-06-22T16:53:52.163' AS DateTime), N'aa')
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[AnswerLine] ON 

INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (3, 2, N'İşe zamanında gelir mi ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (4, 2, N'Arkadaşınız iş temiz midir?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (5, 3, N'İşe zamanında gelir mi ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (6, 3, N'Arkadaşınız iş temiz midir?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (7, 4, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (8, 4, N'Arkadaşınız iş temiz midir?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (22, 12, N'İşe zamanında gelir mi ?', N'Evet', N'aa')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (23, 12, N'Arkadaşınız iş temiz midir?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (24, 13, N'İşe zamanında gelir mi ?', N'Evet', N'a1')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (25, 13, N'İş Arkadaşınız Temiz midir ? ', N'Hayır', N'a2')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (26, 13, N'Yaptığınız işten memnun musunuz ?', N'Hayır', N'a3')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (27, 13, N'Çalışma ortamınız uygun mu ? ', N'Hayır', N'a4')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (28, 14, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (29, 14, N'İş Arkadaşınız Temiz midir ? ', N'Evet', N'sd')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (30, 14, N'Yaptığınız işten memnun musunuz ?', N'Hayır', N'we')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (31, 14, N'Çalışma ortamınız uygun mu ? ', N'Evet', N'we')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (32, 14, N'Üstleriniz baskı uyguluyor mu ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (33, 15, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (34, 15, N'İş Arkadaşınız Temiz midir ? ', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (35, 15, N'Yaptığınız işten memnun musunuz ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (36, 15, N'Çalışma ortamınız uygun mu ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (37, 15, N'Üstleriniz baskı uyguluyor mu ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (38, 16, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (39, 16, N'İş Arkadaşınız Temiz midir ? ', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (40, 16, N'Yaptığınız işten memnun musunuz ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (41, 16, N'Çalışma ortamınız uygun mu ? ', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (42, 16, N'Üstleriniz baskı uyguluyor mu ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (43, 17, N'İşe zamanında gelir mi ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (44, 17, N'İş Arkadaşınız Temiz midir ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (45, 17, N'Yaptığınız işten memnun musunuz ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (46, 17, N'Çalışma ortamınız uygun mu ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (47, 17, N'Üstleriniz baskı uyguluyor mu ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (48, 18, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (49, 18, N'İş Arkadaşınız Temiz midir ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (50, 18, N'Yaptığınız işten memnun musunuz ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (51, 18, N'Çalışma ortamınız uygun mu ? ', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (52, 18, N'Üstleriniz baskı uyguluyor mu ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (53, 19, N'Üstleriniz baskı uyguluyor mu ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (54, 19, N'Çalışma ortamınız uygun mu ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (55, 19, N'Yaptığınız işten memnun musunuz ?', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (56, 19, N'İş Arkadaşınız Temiz midir ? ', N'Evet', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (57, 19, N'İşe zamanında gelir mi ?', N'Hayır', NULL)
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (58, 13, N'Üstleriniz baskı uyguluyor mu ?', N'Evet', N'sdfq')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (59, 20, N'İşe zamanında gelir mi ?', N'Evet', N'qweq')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (60, 20, N'İş Arkadaşınız Temiz midir ? ', N'Hayır', N'rqw')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (61, 20, N'Yaptığınız işten memnun musunuz ?', N'Evet', N'erwq')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (62, 20, N'Çalışma ortamınız uygun mu ? ', N'Evet', N'we')
INSERT [dbo].[AnswerLine] ([Id], [AnswerId], [Question], [Answer], [Comment]) VALUES (63, 20, N'Üstleriniz baskı uyguluyor mu ?', N'Hayır', N'rw')
SET IDENTITY_INSERT [dbo].[AnswerLine] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [NameSurname], [Code], [Password], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy], [IsAdmin]) VALUES (3, N'Ahmet Doğan', N'12345', N'12345', CAST(N'2022-06-18T12:15:52.630' AS DateTime), N'deneme', CAST(N'2022-06-20T14:29:47.133' AS DateTime), N'deneme', 1)
INSERT [dbo].[Person] ([Id], [NameSurname], [Code], [Password], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy], [IsAdmin]) VALUES (4, N'Mesut Kaya', N'123456', N'123456', CAST(N'2022-06-18T12:16:06.817' AS DateTime), N'deneme', NULL, NULL, NULL)
INSERT [dbo].[Person] ([Id], [NameSurname], [Code], [Password], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy], [IsAdmin]) VALUES (5, N'Canan Tan', N'412', N'412', CAST(N'2022-06-20T14:15:55.713' AS DateTime), N'deneme', CAST(N'2022-06-20T18:23:16.297' AS DateTime), N'deneme', 0)
INSERT [dbo].[Person] ([Id], [NameSurname], [Code], [Password], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy], [IsAdmin]) VALUES (7, N'Mustafa Can', N'321', N'321', CAST(N'2022-06-20T18:23:03.360' AS DateTime), N'deneme', NULL, NULL, 0)
INSERT [dbo].[Person] ([Id], [NameSurname], [Code], [Password], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy], [IsAdmin]) VALUES (8, N'aa', N'12', N'12', CAST(N'2022-06-20T19:13:18.650' AS DateTime), N'Ahmet Doğan', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Id], [QuestionLine], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (7, N'İşe zamanında gelir mi ?', CAST(N'2022-06-18T15:49:03.647' AS DateTime), N'deneme', NULL, NULL)
INSERT [dbo].[Question] ([Id], [QuestionLine], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (8, N'İş Arkadaşınız Temiz midir ? ', CAST(N'2022-06-18T15:49:12.330' AS DateTime), N'deneme', CAST(N'2022-06-20T18:26:28.270' AS DateTime), N'deneme')
INSERT [dbo].[Question] ([Id], [QuestionLine], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (9, N'Yaptığınız işten memnun musunuz ?', CAST(N'2022-06-20T18:27:44.533' AS DateTime), N'deneme', NULL, NULL)
INSERT [dbo].[Question] ([Id], [QuestionLine], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (10, N'Çalışma ortamınız uygun mu ? ', CAST(N'2022-06-20T18:28:27.043' AS DateTime), N'deneme', NULL, NULL)
INSERT [dbo].[Question] ([Id], [QuestionLine], [CreateDate], [CreateBy], [ModifyDate], [ModifyBy]) VALUES (11, N'Üstleriniz baskı uyguluyor mu ?', CAST(N'2022-06-20T18:29:04.430' AS DateTime), N'deneme', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
