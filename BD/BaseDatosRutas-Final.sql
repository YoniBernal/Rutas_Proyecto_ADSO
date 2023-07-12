USE [DBO_Rutas_Boyaca]
GO
/****** Object:  Table [dbo].[AnilloTuristico]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnilloTuristico](
	[idAnilloTuristico] [int] IDENTITY(1,1) NOT NULL,
	[NombreAnillo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[Imagen] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AnilloTuristico] PRIMARY KEY CLUSTERED 
(
	[idAnilloTuristico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaEstablecimiento]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaEstablecimiento](
	[idCategoriaEstbl] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NULL,
 CONSTRAINT [PK_CategoriaEstablecimiento] PRIMARY KEY CLUSTERED 
(
	[idCategoriaEstbl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaPS]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaPS](
	[idCategoriaPS] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NULL,
 CONSTRAINT [PK_CategoriaPS] PRIMARY KEY CLUSTERED 
(
	[idCategoriaPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Establecimiento]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimiento](
	[idEstablecimiento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[Ubicacion] [varchar](50) NOT NULL,
	[Foto] [varchar](50) NULL,
	[idTipo] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idMunicipio] [int] NOT NULL,
	[idCategoriaEstbl] [int] NOT NULL,
 CONSTRAINT [PK_Establecimiento] PRIMARY KEY CLUSTERED 
(
	[idEstablecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[idMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Extension] [varchar](50) NULL,
	[NumeroHabitantes] [varchar](50) NULL,
	[Latitud] [varchar](50) NULL,
	[Longitud] [varchar](50) NULL,
	[Bandera] [varchar](50) NULL,
	[Imagen] [varchar](50) NULL,
	[Descripcion] [varchar](300) NULL,
	[Clima] [varchar](50) NULL,
	[Ubicacion] [varchar](50) NULL,
	[idAnilloTursitico] [int] NULL,
	[idProvincia] [int] NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[idMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PQR]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PQR](
	[idPQR] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Respuesta] [varchar](50) NOT NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_PQR] PRIMARY KEY CLUSTERED 
(
	[idPQR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Foto] [varchar](50) NULL,
	[Precio] [varchar](50) NOT NULL,
	[idEstablecimiento] [int] NOT NULL,
	[idCategoriaPS] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[idProvincia] [int] NOT NULL,
	[NombreProvincia] [varchar](70) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Imagen] [varchar](400) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puntuacion]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puntuacion](
	[idPuntuacion] [int] IDENTITY(1,1) NOT NULL,
	[FechaPuntuacion] [date] NULL,
	[Observacion] [varchar](300) NOT NULL,
	[Puntos] [varchar](50) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEstablecimiento] [int] NOT NULL,
 CONSTRAINT [PK_Puntuacion] PRIMARY KEY CLUSTERED 
(
	[idPuntuacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[idRuta] [int] IDENTITY(1,1) NOT NULL,
	[NombreRuta] [varchar](50) NOT NULL,
	[FechaCreacion] [varchar](50) NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[idRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RutaMunicipio]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RutaMunicipio](
	[idRutaMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[idRuta] [int] NULL,
	[idMunicipio] [int] NULL,
	[TituloComentario] [varchar](50) NULL,
	[Comentario] [varchar](300) NULL,
	[Imagen] [varchar](50) NULL,
 CONSTRAINT [PK_RutaMunicipio] PRIMARY KEY CLUSTERED 
(
	[idRutaMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Celular] [varchar](50) NULL,
	[Foto] [varchar](50) NULL,
	[Clave] [varchar](50) NOT NULL,
	[idMunicipio] [int] NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Municipio] ON 

INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (2, N'Almeida', N'57,98 km²', N'1 699	', N'23', N'21', NULL, NULL, N'mnbvjhnvhjgv nb vnb n nb hnbvcvbc bvg', N'1232', N'POINT (-73.3789331 4.9708565)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (3, N'Aquitania', N'828 km²	', N'15 060	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.88398481 5.518603543)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (4, N'Arcabuco', N'155 km²', N'5 243	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.43818476 5.755184269)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (5, N'Belén', N'284,6 km²', N'7 255	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.91161957 5.989277861)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (6, N'Berbeo', N'61,7 km²	 ', N'1 934	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.12703215 5.22728723)
', NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (7, N'Betéitiva', N'123 km²', N'2 024	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.8090312 5.909907818)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (8, N'Boavita', N'159 km²', N'6 914	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.5849594 6.330652563)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (9, N'Boyacá', N'48 km²	', N'4 414	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36230272 5.454237164)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (10, N'Briceño', N'64 km²	', N'2 568	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.9232597 5.690878897)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (11, N'Buenavista', N'111 km²	', N'5 777	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.94230522 5.512431151)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (12, N'Busbanzá', N'22,5 km²', N'1 192	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.88416175 5.831389532)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (13, N'Caldas', N'111 km²', N'3 596	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.865541 5.554575079)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (14, N'Campo Hermoso', N'302 km²', N'3 813	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.10416792 5.031660681)
', NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (15, N'Cerinza', N'61,63 km²', N'4 694	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.94827585 5.956028189)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (16, N'Chinavita', N'148 km²', N'3 499	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36847648 5.167483821)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (17, N'Chinquinquirá', N'133 km²', N'66 203	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.81838763 5.61412789)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (18, N'Chiscas', N'655,2 km²	', N'4 200	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.50183507 6.554050428)
', NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (19, N'Chita', N'748 km²	', N'9 407	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.47189235 6.187082996)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (20, N'Chitaraque', N'157,65 km²', N'5 596	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.4471004 6.027425133)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (21, N'Chivatá', N'49 km²	', N'6 315	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.28252944 5.558948845)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (22, N'Ciénaga', N'73 km²', N'4 694	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.29606129 5.408702192)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (23, N'Cómbita', N'149 km²	', N'14 812	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.32395641 5.634545314)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (24, N'Coper', N'202 km²', N'3 610	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.04546072 5.474983018)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (25, N'Corrales', N'60,85 km²', N'2 251	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.84479484 5.828102208)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (26, N'Covarachía', N'103 km²', N'2 825	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.73897793 6.50017746)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (27, N'Cubará', N'1650 km²', N'6 730	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.11068776 7.000092875)
', NULL, 14)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (28, N'Cucaita', N'43 km²	', N'4 687	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.45433765 5.544451559)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (29, N'Cuitiva', N'43 km²', N'1 892	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.96592323 5.58036723)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (30, N'Chiquiza', N' 71 km² ', N'5 433	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.44946261 5.639834305)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (31, N'Chivor', N'103 km²', N'1 752	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36689376 4.887781661)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (32, N'Duitama', N'186 km²', N'113 105	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.03060967 5.82298568)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (33, N'El Cocuy', N'253 km²	', N'5 197	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.44472932 6.407716232)
', NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (34, N'El Espino', N'70 km²	', N'4 205	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.49700735 6.483027406)
', NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (35, N'Firavitoba', N'109,9 km²', N'5 864	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.99336145 5.66892216)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (36, N'Floresta', N'85 km²', N'4 478	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.91811131 5.859519124)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (37, N'Gachantivá', N'66 km²	', N'2 617	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.54909239 5.751891082)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (38, N'Gámeza', N'88 km²	', N'4 776	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.80552935 5.802337805)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (39, N'Garagoa', N'191,75 km²	', N'16 974	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36442756 5.083243463)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (40, N'Guacamayas', N'59,83 km²	', N'1 657	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.500812 6.459666516)
', NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (41, N'Guateque', N'36,1 km²', N'9 552	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.47120697 5.007320895)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (42, N'Guayatá', N'103 km²', N'5 013	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.4896964 4.967122531)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (43, N'Iza', N'54 km²', N'2 373	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.41176261 6.462863755)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (44, N'Jenesano', N'59 km²	', N'7 659	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.98017623 5.61169614)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (45, N'Jericó', N'179 km²', N'3 956	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36373756 5.385812845)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (46, N'Labranzagrande', N'625 km²	', N'5 068	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.57072349 6.145920383)
', NULL, 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (47, N'La Capilla', N'57,26 km²	', N'2 499	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.57777012 5.562687048)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (48, N'La Victoria', N'110 km²', N'1 674	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.4443474 5.095686992)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (49, N'La Uvita', N'176 km²', N'2 435	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.23439322 5.52379224)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (50, N'Villa de Leyva', N'128 km²	', N'16 984	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.5599847 6.316206406)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (51, N'Macanal', N'199,5 km²', N'4 827	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.5246846 5.632661849)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (52, N'Maripí', N'160 km²	', N'7 424	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.31964224 4.972466063)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (53, N'Miraflores', N'258 km²	', N'9 779	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.00404995 5.55009071)
', NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (54, N'Mongua', N'365 km²', N'4 657	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.14563048 5.196515115)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (55, N'Monguí', N'69,6 km²', N'4 985	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.79809049 5.754242228)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (56, N'Moniquirá', N'220 km²', N'21 345	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.84926001 5.723404072)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (57, N'Motavita', N'61 km²	', N'8 195	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.57337039 5.876334811)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (58, N'Muzo', N'136 km²', N'8 914	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.36784105 5.5776996)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (59, N'Nobsa', N'53 km²	', N'16 353	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.10275078 5.532462867)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (60, N'Nuevo colòn', N'51 km²', N'6 602	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.93985317 5.771042624)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (61, N'Oicatá', N'59 km²	', N'2 831	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.45713618 5.355145864)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (62, N'Otanche', N'512 km²', N'10 671	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.30840398 5.595234239)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (63, N'Pachavita', N'68 km²', N'2 453	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.18096474 5.657535713)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (64, N'Páez', N'443 km²', N'2 867	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.39695306 5.140064731)
', NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (65, N'Paipa', N'305 km²	', N'31 021	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.05431038 5.095234631)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (66, N'Pajarito', N'322 km²', N'1 670	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.11791688 5.77994187)
', NULL, 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (67, N'Panqueba', N'42 km²	', N'1 452	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.70320992 5.293665206)
', NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (68, N'Pauna', N'259 km²', N'10 797	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.45920027 6.443075415)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (69, N'Paya', N'435,5 km²', N'2 537	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.97844872 5.656322691)
', NULL, 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (70, N'Paz de Río', N'116 km²', N'4 618	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.42377541 5.625698707)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (71, N'Pesca', N'282 km²', N'7 862	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.74913738 5.987644906)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (72, N'Pisba', N'469,12 km²	', N'1 323	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.05087224 5.558807609)
', NULL, 13)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (73, N'Puerto Boyacá', N'1472 km²', N'55 694	', N'4646', N'4646', NULL, NULL, N'El municipio de Puerto Boyacá hace parte del Magdalena Medio Boyacense y se localiza sobre la margen derecha del Río Magdalena. ', NULL, N'POINT (-72.48594682 5.721615112)
', NULL, 15)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (74, N'Quipama', N'182 km²', N'7 776	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.58799919 5.977934952)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (75, N'Ramiriquí', N'139 km²', N'9 926	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.17772939 5.518370385)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (76, N'Ráquira', N'231 km²', N'13 682	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.33486896 5.400221644)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (77, N'Rondón', N'258 km²	', N'2 796	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.63249716 5.539065827)
', NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (78, N'Saboyá', N'246 km²', N'12 309	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.20847397 5.357400116)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (79, N'Sáchica', N'62,4 km²	', N'3 780	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.76466062 5.697733432)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (80, N'Samacá', N'160 km²	', N'20 116	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.54263447 5.583592497)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (81, N'San Eduardo', N'106 km²', N'1 867	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.48564359 5.492314591)
', NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (82, N'San José de Pare', N'73,85 km²', N'5 158	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.077143 5.22395594)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (83, N'San Luis de Gaceno', N'458,5 km²	', N'4 996	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.54537245 6.018975771)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (84, N'San Mateo', N'131 km²	', N'3 582	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.16835942 4.819690447)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (85, N'San Miguel de de Sema', N'90 km²', N'4 548	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.55526421 6.401683318)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (86, N'San Pablo de Borbur', N'193,9 km²	', N'10 478	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.72200484 5.518086388)
', NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (87, N'Santana', N'67 km²', N'7 671	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-74.06996448 5.650676396)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (88, N'Santa Maria', N'326,44 km²', N'3 918	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.48122632 6.057413107)
', NULL, 5)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (89, N'Santa Rosa de Vittervo', N'107 km²	', N'13 407	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.26351766 4.857192995)
', NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (90, N'Santa Sofia', N'78 km²	', N'2 658	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.98246092 5.874555597)
', NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (91, N'Sativanorte', N'184 km²', N'2 306	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.60270717 5.713269421)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (92, N'Sativasur', N'81 km²	', N'1 094	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.70845816 6.131136111)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (93, N'Siachoque', N'125 km²	', N'8 967	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.71243808 6.093182343)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (94, N'Soatá', N'136 km²	', N'7 069	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.24464901 5.511815055)
', NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (95, N'Socotá', N'600 km²', N'7 934	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.68402498 6.331911937)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (96, N'Socha', N'264 km²', N'7 092	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.63665338 6.041161833)
', NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (97, N'Sogamoso', N'208,54 km²', N'112 790	', N'45', N'54', NULL, NULL, N'bjkhgvbjhvjh', N'hgfhjggvkjbj', N'POINT (-72.69196586 5.996713021)
', NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (98, N'Somondoco', N'58,7 km²	', N'3 555	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-72.92304769 5.72568939)
', NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (99, N'Sora', N'47 km²	', N'3 027	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.43339298 4.985725507)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (100, N'Soracá', N'57 km²	', N'5 279	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.45015278 5.566839797)
', NULL, 1)
GO
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (101, N'Sotaquirá', N'288 km²	', N'7 578	', NULL, NULL, NULL, NULL, NULL, NULL, N'POINT (-73.24733448 5.765230774)
', NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (102, N'Tasco', N'167 km²', N'6 296	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (103, N'Toca', N'165 km²', N'10 106	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (104, N'Tunja', N'118 km²	', N'203 500	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (105, N'Tuta', N'165 km²	', N'9 734	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (106, N'Tibaná', N'121,76 km²	', N'9 136	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (107, N'Tumerqué', N'106 km²', N'6 050	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (108, N'Tipacoque', N'72 km²	', N'3 160	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (109, N'Tununguá', N'73 km²', N'1 861	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (110, N'Tenza', N'51 km²', N'4 052	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (111, N'Togüí', N'118 km²', N'4 931	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (112, N'Tibasosa', N'94,3 km²', N'14 196	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (113, N'Tutazá', N'135 km²', N'1 854	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (114, N'Úmbita', N'148 km²	', N'10 322	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (115, N'Ventaquemada', N'159,3 km²	', N'15 532	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (116, N'Zetaquira', N'226 km²', N'4 489	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (117, N'Güicán', N'917 km²	', N'6 801	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (122, N'Viracachá', N'64 km²	', N'3 201	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (123, N'Susacón', N'193 km²', N'3 027	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (124, N'Sutatenza', N'41,26 km²	', N'4 033	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (125, N'Sutamarchán', N'102 km²', N'5 890	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (126, N'Tinjacá', N'79,26 km²', N'3 039	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (127, N'Tópaga', N'37 km²', N'3 694	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[Municipio] ([idMunicipio], [Nombre], [Extension], [NumeroHabitantes], [Latitud], [Longitud], [Bandera], [Imagen], [Descripcion], [Clima], [Ubicacion], [idAnilloTursitico], [idProvincia]) VALUES (128, N'Tota', N'314 km²', N'5 348	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[Municipio] OFF
GO
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (1, N'Provincia Centro', N'La Provincia Centro es una de las 15 divisiones territoriales del departamento de Boyacá, en Colombia. Con alrededor de 290 mil habitantes, es la provincia más poblada del departamento. Comprende 14 municipios y la capital departamental Tunja, que también hace parte de su área metropolitana.', N'https://www.viajarenverano.com/wp-content/uploads/2020/03/Motavita-Escultura.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (2, N'Provincia Gutierrez', N'Gutiérrez es una de las provincias del departamento de Boyacá (Colombia). Se ubica al noreste del departamento y se divide en 6 municipios.', N'https://situr.boyaca.gov.co/wp-content/uploads/2017/03/elcocuy-e1492781385424-1024x630.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (3, N'Provincia Lengupa', N'La Provincia de Lengupá es una de las provincias de Boyacá (Colombia). Denominada así por estar localizada en la hoya hidrográfica que lleva su nombre.El nombre de Lengupá tiene similitud con la de “Lenguazaque” que significa “Frontera del Zaque” en Idioma muisca. Esta región se extiende desde el páramo del Bijagual, hasta el comienzo de las llanuras del Casanare.', N'https://s1.wklcdn.com/image_190/5721658/58504463/39115180Master.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (4, N'Provincia Marquez', N'La provincia de Márquez es una de las 15 provincias del departamento de Boyacá constituida por 10 Municipios. La mayor parte de la Provincia se ubica en el Centro-Sur de Boyacá a aproximadamente 28 km de Tunja. Recibe su nombre en memoria a José Ignacio de Márquez, presidente de Colombia durante 1837 y 1841. ', N'https://phillpappas.files.wordpress.com/2013/02/turmeque-tejo-statue-3.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (5, N'Provincia Neira', N'La Provincia de Neira es una de las provincias del departamento de Boyacá (Colombia). Cuenta con 6 Municipios.', N'https://elcampesino.co/wp-content/uploads/2018/04/5.-Estatua-Mamapacha-Secretari%CC%81a-de-Cultura-Juventudes-Turismo-Recreacio%CC%81n-y-Deporte-Garagoa.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (6, N'Provincia Norte', N'La Provincia de Norte es una de las 15 provincias del departamento de Boyacá (Colombia). Está conformada por 9 municipios.', N'https://periodicoeldiario.com/wp-content/uploads/2017/08/Soata-02.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (7, N'Provincia Occidente', N'La Provincia de Occidente es una de las 15 Provincias de Boyacá (Colombia), está compuesta por 15 municipios al igual que la provincia del Centro, uno de los lugares de renombre es la Basílica de Chiquinquirá en donde alberga la imagen de la patrona de Colombia, la Virgen del Rosario. Una de sus principales fuentes económicas son las esmeraldas.', N'https://www.uniminutoradio.com.co/wp-content/uploads/2021/12/Puno.jpeg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (8, N'Provincia Oriente', N'La Provincia de Oriente es una de las 15 Provincias de Boyacá, está agrupada por 8 municipios, un aspecto particular de su localización, es que se encuentra en la zona suroccidental del departamento. El nombre se debe a la designación que tenía la provincia creada en el siglo XIX, y de la cual se desprendió la Provincia de Neira que se encuentra en la zona oriental del departamento.', N'https://www.sitiosturisticoscolombia.com/wp-content/uploads/represa-del-chivor-la-esmeralda.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (9, N'Provincia Ricaurte', N'La provincia de Ricaurte, constituida por 12 municipios, es una de las 15 provincias del departamento de Boyacá (Colombia). y es la provincia más turísticas del departamento siendo la más reconocida la población de Villa de Leyva.La Provincia de Ricaurte se encuentra dividida política y administrativamente en dos zonas: Alto Ricaurte y Bajo Ricaurte.', N'https://hotelgetsemani.com/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBMXBOa0E9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--05d7f6c0c01e8326f086ff9b842f52ae28453306/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VY21WemFYcGxYM1J2WDJ4cGJXbDBXd2RwQWlBRGFRTENBUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--51eeef242737243c0f308167a99691376e9e469b/Casa-Terracota-1.jpg?locale=es', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (10, N'Provincia Sugamuxi', N'La Provincia Sugamuxi es una de las 15 provincias que tiene el departamento de Boyacá. Esta región la conforman 13 municipios. Esta provincia es conocida como una de las regiones industriales y comerciales del departamento, dado que tiene rutas de conexión entre el oriente de Boyacá y los llanos orientales, lo que representa un paso estratégico de la economía boyacense.', N'https://periodicoeldiario.com/wp-content/uploads/2017/03/Sogamoso-ELDIARIO.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (11, N'Provincia Tundama', N'La provincia de Tundama es una de las 15 provincias del departamento de Boyacá, en el centro-oriente de Colombia. Se ubica al norte del departamento y cuenta con 9 municipios. Su capital es Duitama, el mayor centro urbano, comercial y de servicios de la región. Su nombre proviene del cacique Tundama, uno de los principales líderes políticos y militares de la sociedad muisca, quien ofreció resistencia al contingente español liderado por el conquistador Gonzalo Jiménez de Quesada.', N'https://www.diccionariodecolombia.expert/wp-content/uploads/2020/08/corralesf.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (12, N'Provincia Valderrama', N'La Provincia Valderrama es una de las 15 provincias del departamento de Boyacá, Colombia. Se encuentra situada en la zona nororiental. Está conformada por 7 municipios, siendo Socha su capital provincial. Su nombre proviene del nombre de un hombre (Antonio Valderrama) que se destacó por su generosidad con el ejército de Bolívar, que al pasar por Tasco le regaló 500 caballos y hospedaje.', N'https://situr.boyaca.gov.co/wp-content/uploads/2017/08/IGLESIA-NUESTRA-SE%C3%91ORA-DEL-ROSARIO.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (13, N'Provincia La Libertad', N'La provincia de La Libertad es la más reciente de las provincias del Departamento de Boyacá, e integró algunos municipios de provincias de Sugamuxi y Valderrama por el decreto 1509 del 27 de diciembre de 1995. Su nombre se debe a que en el territorio, el ejército patriota obtuvo su primer gran triunfo contra las fuerzas realistas, además de haber sido la puerta de entrada en el departamento de Boyacá del ejército de Simón Bolívar.', N'https://estaticos.elcolombiano.com/documents/10157/0/780x424/0c0/0d0/none/11101/CPJQ/image_content_32179788_20181108080104.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (14, N'Provincia Distrito Fronterizo', N'Es el distrito fronterizo, segregado de las provincias de Norte y Gutiérrez.
En esta provincia habita la comunidad indígena U´wa, únicos sobrevivientes en Boyacá y descendientes de los Tunebos, quienes fueron desplazados y acorralados en la Sierra Nevada del Cocuy.', N'https://www.diccionariodecolombia.expert/wp-content/uploads/2020/08/cubaraf.jpg', 1)
INSERT [dbo].[Provincia] ([idProvincia], [NombreProvincia], [Descripcion], [Imagen], [Estado]) VALUES (15, N'Provincia Zona de Manejo Especial', N'La Zona de Manejo Especial se caracteriza porque en ella únicamente hay un municipio, Puerto Boyacá, que es un puerto fluvial muy activo sobre el río Magdalena, en el cual se realiza la explotación de petróleo desde la década de 1940. Esta zona ocupa el extremo occidental del departamento.', N'https://www.finanzasyturismo.com/wp-content/uploads/2017/12/PUERTO-BOYAC%C3%81.jpg', 1)
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [TipoUsuario]) VALUES (1, N'Alcaldia')
INSERT [dbo].[Rol] ([idRol], [TipoUsuario]) VALUES (2, N'Comerciante')
INSERT [dbo].[Rol] ([idRol], [TipoUsuario]) VALUES (3, N'Turista')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Ruta] ON 

INSERT [dbo].[Ruta] ([idRuta], [NombreRuta], [FechaCreacion], [idUsuario]) VALUES (1, N'Ruta1', N'19/06/2023', NULL)
SET IDENTITY_INSERT [dbo].[Ruta] OFF
GO
SET IDENTITY_INSERT [dbo].[RutaMunicipio] ON 

INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (1, NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (2, NULL, 3, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (3, NULL, 4, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (4, NULL, 5, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (5, NULL, 6, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (6, NULL, 7, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (7, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (8, NULL, 9, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (9, NULL, 10, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (10, NULL, 11, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (11, NULL, 12, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (12, NULL, 13, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (13, NULL, 14, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (14, NULL, 15, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (15, NULL, 16, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (16, NULL, 17, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (17, NULL, 18, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (18, NULL, 19, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (19, NULL, 20, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (20, NULL, 21, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (21, NULL, 22, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (22, NULL, 23, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (23, NULL, 24, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (24, NULL, 25, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (25, NULL, 26, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (26, NULL, 27, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (27, NULL, 28, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (28, NULL, 29, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (29, NULL, 30, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (30, NULL, 31, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (31, NULL, 32, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (32, NULL, 33, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (33, NULL, 34, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (34, NULL, 35, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (35, NULL, 36, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (36, NULL, 37, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (37, NULL, 38, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (38, NULL, 39, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (39, NULL, 40, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (40, NULL, 41, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (41, NULL, 42, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (42, NULL, 43, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (43, NULL, 44, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (44, NULL, 45, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (45, NULL, 46, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (46, NULL, 47, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (47, NULL, 48, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (48, NULL, 49, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (49, NULL, 50, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (50, NULL, 51, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (51, NULL, 52, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (52, NULL, 53, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (53, NULL, 54, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (54, NULL, 55, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (55, NULL, 56, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (56, NULL, 57, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (57, NULL, 58, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (58, NULL, 59, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (59, NULL, 60, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (60, NULL, 61, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (61, NULL, 62, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (62, NULL, 63, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (63, NULL, 64, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (64, NULL, 65, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (65, NULL, 66, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (66, NULL, 67, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (67, NULL, 68, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (68, NULL, 69, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (69, NULL, 70, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (70, NULL, 71, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (71, NULL, 72, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (72, NULL, 73, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (73, NULL, 74, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (74, NULL, 75, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (75, NULL, 76, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (76, NULL, 77, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (77, NULL, 78, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (78, NULL, 79, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (79, NULL, 80, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (80, NULL, 81, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (81, NULL, 82, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (82, NULL, 83, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (83, NULL, 84, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (84, NULL, 85, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (85, NULL, 86, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (86, NULL, 87, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (87, NULL, 88, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (88, NULL, 89, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (89, NULL, 90, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (90, NULL, 91, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (91, NULL, 92, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (92, NULL, 93, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (93, NULL, 94, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (94, NULL, 95, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (95, NULL, 96, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (96, NULL, 97, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (97, NULL, 98, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (98, NULL, 99, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (99, NULL, 100, NULL, NULL, NULL)
GO
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (100, NULL, 101, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (101, NULL, 102, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (102, NULL, 103, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (103, NULL, 104, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (104, NULL, 105, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (105, NULL, 106, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (106, NULL, 107, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (107, NULL, 108, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (108, NULL, 109, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (109, NULL, 110, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (110, NULL, 111, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (111, NULL, 112, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (112, NULL, 113, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (113, NULL, 114, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (114, NULL, 115, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (115, NULL, 116, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (116, NULL, 117, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (119, NULL, 122, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (120, NULL, 123, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (121, NULL, 124, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (122, NULL, 125, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (123, NULL, 126, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (124, NULL, 127, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (125, NULL, 128, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (129, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (132, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (133, NULL, NULL, N'Prueba', N'Esto es una prueba', NULL)
INSERT [dbo].[RutaMunicipio] ([idRutaMunicipio], [idRuta], [idMunicipio], [TituloComentario], [Comentario], [Imagen]) VALUES (134, NULL, NULL, N'Prueba 2', N'hola a todos', NULL)
SET IDENTITY_INSERT [dbo].[RutaMunicipio] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo] ON 

INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (1, N'Cafeteria')
INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (2, N'Bar')
INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (3, N'Restaurante')
INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (4, N'Supermercado')
INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (5, N'Carniceria ')
INSERT [dbo].[Tipo] ([idTipo], [Nombre]) VALUES (6, N'Papeleria ')
SET IDENTITY_INSERT [dbo].[Tipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (2, N'22222', N'Sara', N'klskals', N'4234234', NULL, N'43434', 5, 1)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (3, N'232', N'wewe', N'ewew', N'3r4r2', N'f3f', N'645', 55, 2)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (4, N'23232', N'ewew', N'232', N'232', N'ew', N'9898', 76, 2)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (5, N'23232', N'ewr4', N'343', N'343', N'4trf', N'34rf', 44, 2)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (6, N'23232', N'erw', N'werew', N'erw4r', N'erwr', N'424', 24, 2)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (7, N'1112', N'222', N'sss', N'7777', NULL, N'54545', 2, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (10, N'9898', N'Carla', N'carla@mm', N'43234', NULL, N'93448', 2, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (14, N'989124238', N'Carla', N'carla@asdasdmm', N'43234', NULL, N'93448', NULL, 1)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (15, N'981231239124238', N'Carla', N'carla@asd234234asdmm', N'43234', NULL, N'93448', 10, 1)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (20, N'1005389483', N'Zarahy', N'andres@gmail.com', N'09989', NULL, N'56456', NULL, 1)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (21, N'5435435', N'Tita', N'tita@tita', N'3454545', NULL, N'45343', NULL, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (22, N'3443', N'Dana', N'Dana@dana', N'8458584', NULL, N'453453', NULL, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (23, N'4534233', N'Luna', N'Luna@luna', N'53434', NULL, N'54535', NULL, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (24, N'453423', N'Luna', N'Luna@lun', N'53434', NULL, N'989', NULL, 3)
INSERT [dbo].[Usuario] ([idUsuario], [Documento], [Nombre], [Email], [Celular], [Foto], [Clave], [idMunicipio], [idRol]) VALUES (25, N'100', N'Sara', N'sara@gmail.com', N'232312229', NULL, N'433', 15, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Establecimiento]  WITH CHECK ADD  CONSTRAINT [FK_Establecimiento_CategoriaEstablecimiento] FOREIGN KEY([idCategoriaEstbl])
REFERENCES [dbo].[CategoriaEstablecimiento] ([idCategoriaEstbl])
GO
ALTER TABLE [dbo].[Establecimiento] CHECK CONSTRAINT [FK_Establecimiento_CategoriaEstablecimiento]
GO
ALTER TABLE [dbo].[Establecimiento]  WITH CHECK ADD  CONSTRAINT [FK_Establecimiento_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Establecimiento] CHECK CONSTRAINT [FK_Establecimiento_Municipio]
GO
ALTER TABLE [dbo].[Establecimiento]  WITH CHECK ADD  CONSTRAINT [FK_Establecimiento_Tipo] FOREIGN KEY([idTipo])
REFERENCES [dbo].[Tipo] ([idTipo])
GO
ALTER TABLE [dbo].[Establecimiento] CHECK CONSTRAINT [FK_Establecimiento_Tipo]
GO
ALTER TABLE [dbo].[Establecimiento]  WITH CHECK ADD  CONSTRAINT [FK_Establecimiento_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Establecimiento] CHECK CONSTRAINT [FK_Establecimiento_Usuario]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_AnilloTuristico] FOREIGN KEY([idAnilloTursitico])
REFERENCES [dbo].[AnilloTuristico] ([idAnilloTuristico])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_AnilloTuristico]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Provincia]
GO
ALTER TABLE [dbo].[PQR]  WITH CHECK ADD  CONSTRAINT [FK_PQR_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[PQR] CHECK CONSTRAINT [FK_PQR_Usuario]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_CategoriaPS] FOREIGN KEY([idCategoriaPS])
REFERENCES [dbo].[CategoriaPS] ([idCategoriaPS])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_CategoriaPS]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Establecimiento] FOREIGN KEY([idEstablecimiento])
REFERENCES [dbo].[Establecimiento] ([idEstablecimiento])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Establecimiento]
GO
ALTER TABLE [dbo].[Puntuacion]  WITH CHECK ADD  CONSTRAINT [FK_Puntuacion_Establecimiento] FOREIGN KEY([idEstablecimiento])
REFERENCES [dbo].[Establecimiento] ([idEstablecimiento])
GO
ALTER TABLE [dbo].[Puntuacion] CHECK CONSTRAINT [FK_Puntuacion_Establecimiento]
GO
ALTER TABLE [dbo].[Puntuacion]  WITH CHECK ADD  CONSTRAINT [FK_Puntuacion_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Puntuacion] CHECK CONSTRAINT [FK_Puntuacion_Usuario]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Usuario]
GO
ALTER TABLE [dbo].[RutaMunicipio]  WITH CHECK ADD  CONSTRAINT [FK_RutaMunicipio_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[RutaMunicipio] CHECK CONSTRAINT [FK_RutaMunicipio_Municipio]
GO
ALTER TABLE [dbo].[RutaMunicipio]  WITH CHECK ADD  CONSTRAINT [FK_RutaMunicipio_Ruta] FOREIGN KEY([idRuta])
REFERENCES [dbo].[Ruta] ([idRuta])
GO
ALTER TABLE [dbo].[RutaMunicipio] CHECK CONSTRAINT [FK_RutaMunicipio_Ruta]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Municipio]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  StoredProcedure [dbo].[GET_Active_Provincias]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GET_Active_Provincias]

@Estado BIT = 1

AS 
BEGIN 

	SELECT *
	FROM Provincia
	WHERE Estado = @Estado 

END
GO
/****** Object:  StoredProcedure [dbo].[GET_Provincia_BY_ID]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_Provincia_BY_ID]

	@idProvincia INT
AS
BEGIN 

	SELECT *
	FROM Provincia 
	WHERE idProvincia = @idProvincia

END
GO
/****** Object:  StoredProcedure [dbo].[GetMunicipios]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMunicipios]

AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT *
	FROM Municipio

END

GO
/****** Object:  StoredProcedure [dbo].[Ingresar_User]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ingresar_User]


@Email varchar (50),
@Clave varchar (50)

AS
BEGIN
	
	
	SELECT *
	FROM dbo.Usuario 
	WHERE Email=@Email  AND Clave=@Clave

END
GO
/****** Object:  StoredProcedure [dbo].[Register_User]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Register_User]
	
    @Documento varchar(50),
	@Nombre varchar(50),
	@Email varchar(50),
	@Celular varchar(50),
	@Foto varchar(50) = NULL,
    @Clave varchar(50), 
	@idMunicipio int,
	@idRol int

AS
BEGIN

	SET NOCOUNT ON;

		DECLARE @CountEmail INT = 0;
		DECLARE @CountDocumento INT = 0;
		DECLARE @idMunicipioFmt INT = NULL;

		
		SELECT @CountEmail = COUNT(*) FROM dbo.Usuario WHERE [Email]=@Email
		SELECT @CountDocumento = COUNT(*) FROM dbo.Usuario WHERE [Documento]=@Documento
		
		IF(@CountEmail > 0)
		BEGIN
			SELECT 'False'  as 'Result','El Email a registrar ya existe en la base de datos' as 'Message';
		END
	    ELSE IF(@CountEmail < 0)
		BEGIN
		  SELECT 'True'  as 'Result', 'Datos Registrados';
		END
	    ELSE IF(@CountDocumento > 0)
		BEGIN
			SELECT 'FALSE'  as 'Result','El Documento a registrar ya existe en la base de datos'as 'Message';
		END
		ELSE IF(@CountDocumento < 0)
		BEGIN
			SELECT 'True'  as 'Result', 'Datos Registrados';
		END
		ELSE
		BEGIN
		IF(@idMunicipio > 0)
		BEGIN
			SET @idMunicipioFmt = @idMunicipio;
		END
			INSERT
			INTO dbo.Usuario([Documento]
			  ,[Nombre]
			  ,[Email]
			  ,[Celular]
			  ,[Foto]
			  ,[Clave]
			  ,[idMunicipio]
			  ,[idRol])

			VALUES  (@Documento, 
					 @Nombre,
					 @Email,
					 @Celular,
					 @Foto,
					 @Clave,
					 @idMunicipioFmt,
					 @idRol)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[SELECT_ Tipo_Establecimiento]    Script Date: 11/07/2023 12:43:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SELECT_ Tipo_Establecimiento]
AS
BEGIN
	

	SET NOCOUNT ON;

	SELECT *
	FROM Tipo
	
	
END
GO
