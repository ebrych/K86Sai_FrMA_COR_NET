USE [DBFORMA]
GO
/****** Object:  Table [dbo].[tb_administrativos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_administrativos](
	[id_usuario] [bigint] NOT NULL,
	[fech_nac] [date] NULL,
	[puesto] [varchar](100) NULL DEFAULT ('SD'),
	[telefono] [varchar](12) NULL DEFAULT ('SD')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_alumnos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_alumnos](
	[id_usuario] [bigint] NOT NULL,
	[fech_nac] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_apoderado]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_apoderado](
	[id_usuario] [bigint] NOT NULL,
	[trabajo] [varchar](100) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](12) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_apoderado_alumno]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_apoderado_alumno](
	[id_apoderado] [bigint] NULL,
	[id_alumno] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_cliclo_academico]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_cliclo_academico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_ini] [date] NOT NULL,
	[fech_fin] [date] NOT NULL,
	[fech_reg] [datetime] NULL,
	[estado] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_cursos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_cursos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [tinyint] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_detalle_matricula_curso]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_detalle_matricula_curso](
	[id_mat_cur] [bigint] NOT NULL,
	[nota] [decimal](18, 0) NOT NULL,
	[porcentaje] [int] NOT NULL,
	[id_espec] [bigint] NOT NULL,
	[fech_reg] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_docente_curso]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_docente_curso](
	[id_docente] [bigint] NULL,
	[id_curso] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_docentes]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_docentes](
	[id_usuario] [bigint] NOT NULL,
	[fech_nac] [date] NULL,
	[telefono] [varchar](12) NULL DEFAULT ('SD')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_especificacion]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_especificacion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[id_docente] [bigint] NOT NULL,
	[id_grupo] [bigint] NOT NULL,
	[fech_reg] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_grados]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_grados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[sigla] [varchar](10) NOT NULL,
	[estado] [tinyint] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_grupos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_grupos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[fech_reg] [datetime] NOT NULL,
	[id_docente] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_malla_curricular]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_malla_curricular](
	[id_grado] [int] NOT NULL,
	[id_curso] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_matricula]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_matricula](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_alumno] [bigint] NOT NULL,
	[id_grado] [int] NOT NULL,
	[id_seccion] [int] NOT NULL,
	[id_ciclo_acdemico] [int] NOT NULL,
	[fech_reg] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_matricula_cursos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_matricula_cursos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_matricula] [bigint] NOT NULL,
	[id_cursos] [int] NOT NULL,
	[nota_final] [decimal](18, 0) NULL,
	[id_docente] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_pantilla_cargo_rol]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_pantilla_cargo_rol](
	[id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[id_permiso] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_permiso_usuario]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_permiso_usuario](
	[id_usuario] [bigint] NULL,
	[id_permiso] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_permisos]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_permisos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](20) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[icono] [varchar](50) NOT NULL,
	[controlador] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_secciones]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_secciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[estado] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_tipo_documento]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_tipo_documento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_usuarios]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_usuarios](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellidos] [varchar](100) NOT NULL,
	[usr] [varchar](20) NOT NULL,
	[pas] [varchar](10) NOT NULL,
	[tipo_doc] [int] NOT NULL,
	[num_doc] [varchar](15) NOT NULL,
	[direccion] [varchar](200) NULL,
	[email] [varchar](100) NULL,
	[fecha_reg] [datetime] NOT NULL DEFAULT (sysdatetime()),
	[estado] [tinyint] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_administrativos] ([id_usuario], [fech_nac], [puesto], [telefono]) VALUES (5, CAST(N'1970-07-07' AS Date), N'Coordinador', N'054-')
INSERT [dbo].[tb_administrativos] ([id_usuario], [fech_nac], [puesto], [telefono]) VALUES (6, CAST(N'1970-07-07' AS Date), N'Coordinador', N'054-')
INSERT [dbo].[tb_alumnos] ([id_usuario], [fech_nac]) VALUES (7, CAST(N'2003-01-01' AS Date))
INSERT [dbo].[tb_apoderado] ([id_usuario], [trabajo], [direccion], [telefono]) VALUES (10, N'xxx', N'Av. xxx 123', N'054-')
INSERT [dbo].[tb_apoderado_alumno] ([id_apoderado], [id_alumno]) VALUES (10, 7)
SET IDENTITY_INSERT [dbo].[tb_cursos] ON 

INSERT [dbo].[tb_cursos] ([id], [descripcion], [estado]) VALUES (1, N'Matemática', 1)
SET IDENTITY_INSERT [dbo].[tb_cursos] OFF
INSERT [dbo].[tb_docentes] ([id_usuario], [fech_nac], [telefono]) VALUES (9, CAST(N'1980-07-07' AS Date), N'054-')
SET IDENTITY_INSERT [dbo].[tb_grados] ON 

INSERT [dbo].[tb_grados] ([id], [descripcion], [sigla], [estado]) VALUES (1, N'Inicial', N'INI', 1)
SET IDENTITY_INSERT [dbo].[tb_grados] OFF
INSERT [dbo].[tb_malla_curricular] ([id_grado], [id_curso]) VALUES (1, 1)
INSERT [dbo].[tb_pantilla_cargo_rol] ([id], [descripcion], [id_permiso]) VALUES (1, N'Administrativo', 2)
INSERT [dbo].[tb_pantilla_cargo_rol] ([id], [descripcion], [id_permiso]) VALUES (1, N'Administrativo', 3)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 1)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 2)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 3)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 4)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 5)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (5, 2)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (5, 3)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (6, 2)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (6, 3)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 6)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 7)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 8)
INSERT [dbo].[tb_permiso_usuario] ([id_usuario], [id_permiso]) VALUES (1, 9)
SET IDENTITY_INSERT [dbo].[tb_permisos] ON 

INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (1, N'Administrativos', N'Gestión de administrativos', N'fas fa-users', N'Administrativo')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (2, N'Inscripciones', N'Gestión de alumnos', N'fas fa-user-graduate', N'Alumno')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (3, N'Docentes', N'Gestión de docentes', N'fas fa-chalkboard-teacher', N'Docente')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (4, N'Apoderados', N'Gestión de apoderados', N'fab fa-black-tie', N'Apoderado')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (5, N'Permisos', N'Gestión de permisos del sistema', N'fas fa-lock', N'Permiso')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (6, N'Cursos', N'Gestión de cursos', N'fas fa-book', N'Cursos')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (7, N'Malla Curricular', N'Gestión de mallas curriculares', N'fas fa-layer-group', N'MallaCurricular')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (8, N'Grados', N'Gestión de grados y niveles', N'fas fa-ellipsis-v', N'Niveles')
INSERT [dbo].[tb_permisos] ([id], [titulo], [descripcion], [icono], [controlador]) VALUES (9, N'Ciclos Academicos', N'Gestión de ciclos Academicos', N'fas fa-pencil-ruler', N'Ciclos')
SET IDENTITY_INSERT [dbo].[tb_permisos] OFF
SET IDENTITY_INSERT [dbo].[tb_tipo_documento] ON 

INSERT [dbo].[tb_tipo_documento] ([id], [descripcion]) VALUES (1, N'DNI')
INSERT [dbo].[tb_tipo_documento] ([id], [descripcion]) VALUES (2, N'Pasaporte')
INSERT [dbo].[tb_tipo_documento] ([id], [descripcion]) VALUES (3, N'Carnet de extrangeria')
SET IDENTITY_INSERT [dbo].[tb_tipo_documento] OFF
SET IDENTITY_INSERT [dbo].[tb_usuarios] ON 

INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (1, N'Eber David', N'Baldarrago', N'root', N'123', 1, N'43744482', N'Av. qwerty 123', NULL, CAST(N'2018-11-16 15:25:19.853' AS DateTime), 1)
INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (5, N'pepito', N'perez', N'20181116171937', N'F0E34F', 1, N'11111111', N'Av. Calle 123', N'prueba@example.com', CAST(N'2018-11-16 17:19:37.910' AS DateTime), 1)
INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (6, N'jorge', N'apaza', N'20181117092701', N'11', 1, N'22222222', N'Av. Calle 456', N'japaza@example.com', CAST(N'2018-11-17 09:27:01.737' AS DateTime), 1)
INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (7, N'alumno', N'de prueba', N'20181122102352', N'4CC9E8', 1, N'99008877', N'Av. Calle 123', N'prueba@example.com', CAST(N'2018-11-22 10:23:52.743' AS DateTime), 1)
INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (9, N'Docente', N'Demo', N'20181122113534', N'D914C7', 1, N'74185296', N'Av. Calle 123', N'prueba@example.com', CAST(N'2018-11-22 11:35:34.993' AS DateTime), 1)
INSERT [dbo].[tb_usuarios] ([id], [nombre], [apellidos], [usr], [pas], [tipo_doc], [num_doc], [direccion], [email], [fecha_reg], [estado]) VALUES (10, N'Apoderado', N'Demo', N'20181122120920', N'93788B', 1, N'55588813', N'Av. Calle 123', N'prueba@example.com', CAST(N'2018-11-22 12:09:20.060' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tb_usuarios] OFF
ALTER TABLE [dbo].[tb_cliclo_academico] ADD  DEFAULT (sysdatetime()) FOR [fech_reg]
GO
ALTER TABLE [dbo].[tb_cliclo_academico] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[tb_detalle_matricula_curso] ADD  DEFAULT (sysdatetime()) FOR [fech_reg]
GO
ALTER TABLE [dbo].[tb_especificacion] ADD  DEFAULT (sysdatetime()) FOR [fech_reg]
GO
ALTER TABLE [dbo].[tb_grupos] ADD  DEFAULT (sysdatetime()) FOR [fech_reg]
GO
ALTER TABLE [dbo].[tb_matricula] ADD  DEFAULT (sysdatetime()) FOR [fech_reg]
GO
ALTER TABLE [dbo].[tb_secciones] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[tb_administrativos]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_alumnos]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_apoderado]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_apoderado_alumno]  WITH CHECK ADD FOREIGN KEY([id_alumno])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_apoderado_alumno]  WITH CHECK ADD FOREIGN KEY([id_apoderado])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_detalle_matricula_curso]  WITH CHECK ADD FOREIGN KEY([id_espec])
REFERENCES [dbo].[tb_especificacion] ([id])
GO
ALTER TABLE [dbo].[tb_detalle_matricula_curso]  WITH CHECK ADD FOREIGN KEY([id_mat_cur])
REFERENCES [dbo].[tb_matricula_cursos] ([id])
GO
ALTER TABLE [dbo].[tb_docente_curso]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[tb_cursos] ([id])
GO
ALTER TABLE [dbo].[tb_docente_curso]  WITH CHECK ADD FOREIGN KEY([id_docente])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_docentes]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_especificacion]  WITH CHECK ADD FOREIGN KEY([id_docente])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_especificacion]  WITH CHECK ADD FOREIGN KEY([id_grupo])
REFERENCES [dbo].[tb_grupos] ([id])
GO
ALTER TABLE [dbo].[tb_grupos]  WITH CHECK ADD FOREIGN KEY([id_docente])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_malla_curricular]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[tb_cursos] ([id])
GO
ALTER TABLE [dbo].[tb_malla_curricular]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[tb_grados] ([id])
GO
ALTER TABLE [dbo].[tb_matricula]  WITH CHECK ADD FOREIGN KEY([id_alumno])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_matricula]  WITH CHECK ADD FOREIGN KEY([id_ciclo_acdemico])
REFERENCES [dbo].[tb_cliclo_academico] ([id])
GO
ALTER TABLE [dbo].[tb_matricula]  WITH CHECK ADD FOREIGN KEY([id_grado])
REFERENCES [dbo].[tb_grados] ([id])
GO
ALTER TABLE [dbo].[tb_matricula]  WITH CHECK ADD FOREIGN KEY([id_seccion])
REFERENCES [dbo].[tb_secciones] ([id])
GO
ALTER TABLE [dbo].[tb_matricula_cursos]  WITH CHECK ADD FOREIGN KEY([id_cursos])
REFERENCES [dbo].[tb_cursos] ([id])
GO
ALTER TABLE [dbo].[tb_matricula_cursos]  WITH CHECK ADD FOREIGN KEY([id_matricula])
REFERENCES [dbo].[tb_matricula] ([id])
GO
ALTER TABLE [dbo].[tb_permiso_usuario]  WITH CHECK ADD FOREIGN KEY([id_permiso])
REFERENCES [dbo].[tb_permisos] ([id])
GO
ALTER TABLE [dbo].[tb_permiso_usuario]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[tb_usuarios] ([id])
GO
ALTER TABLE [dbo].[tb_usuarios]  WITH CHECK ADD FOREIGN KEY([tipo_doc])
REFERENCES [dbo].[tb_tipo_documento] ([id])
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_CICLO_ACADEMICO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_CICLO_ACADEMICO](
@id int,
@nombre varchar(50),
@inicio date,
@fin date,
@estado tinyint
)
as
UPDATE tb_cliclo_academico SET nombre=@nombre,fecha_ini=@inicio,fech_fin=@fin,estado=@estado WHERE id=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_CURSO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_CURSO](
@id_curso int ,
@descripcion varchar(50),
@estado tinyint
)
as
UPDATE tb_cursos SET descripcion=@descripcion,estado=@estado WHERE id=@id_curso

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_DETALLE_ADMINISTRATIVO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_DETALLE_ADMINISTRATIVO](
@id_usuario	bigint,
@fech_nac	date,
@puesto	varchar(100),
@telefono	varchar(12)
)
as
UPDATE tb_administrativos SET fech_nac=@fech_nac,puesto=@puesto,telefono=@telefono WHERE id_usuario=id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_DETALLE_ALUMNO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_DETALLE_ALUMNO](
@id_usuario bigint,
@fech_nac date
)
as
UPDATE tb_alumnos SET id_usuario=@id_usuario, fech_nac=@fech_nac WHERE id_usuario=@id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_DETALLE_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_DETALLE_DOCENTE](
@id_usuario	bigint,
@fech_nac	date,
@telefono	varchar(12)
)
as
UPDATE tb_docentes SET fech_nac=@fech_nac , telefono=@telefono WHERE id_usuario=@id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_GRADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_GRADO](
@id_grado int,
@descripcion varchar(100),
@sigla varchar(10),
@estado tinyint
)
as
UPDATE tb_grados SET descripcion=@descripcion,sigla=@sigla,estado=@estado WHERE id=@id_grado

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_SECCIONES]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_SECCIONES](
@id int,
@descripcion varchar(50),
@estado tinyint
)
as
UPDATE tb_secciones SET descripcion=@descripcion,estado=@estado WHERE id=@id 

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZA_USUARIO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZA_USUARIO](
@id bigint,
@nombre	varchar(100),
@apellidos	varchar(100),
@usr	varchar(20),
@pas varchar(20),
@tipo_doc	int,
@num_doc	varchar(15),
@direccion	varchar(200),
@email	varchar(100),
@estado tinyint
)
as
DECLARE
@mismoNombre int,
@nBusca varchar(20),
@coincidenciaUsrName int
SELECT @coincidenciaUsrName=count(*) FROM tb_usuarios
SELECT @nBusca=usr FROM tb_usuarios WHERE id=@id

if @nBusca=@usr AND @pas=''
	begin
	UPDATE tb_usuarios SET nombre=@nombre,apellidos=@apellidos,
	tipo_doc=@tipo_doc,num_doc=@num_doc,
	direccion=@direccion,email=@email,estado=@estado
	WHERE id=@id
	end
else if @nBusca=@usr AND @pas!=''
	begin
	UPDATE tb_usuarios SET nombre=@nombre,apellidos=@apellidos,pas=@pas,
	tipo_doc=@tipo_doc,num_doc=@num_doc,
	direccion=@direccion,email=@email,estado=@estado
	WHERE id=@id
	end
else if @nBusca!=@usr AND @pas=''
	begin
	if(@coincidenciaUsrName=0)
		begin
		UPDATE tb_usuarios SET nombre=@nombre,apellidos=@apellidos,
		usr=@usr,tipo_doc=@tipo_doc,num_doc=@num_doc,
		direccion=@direccion,email=@email,estado=@estado
		WHERE id=@id
		end
	end
else if @nBusca!=@usr AND @pas!=''
	begin
	if(@coincidenciaUsrName=0)
		begin
		UPDATE tb_usuarios SET nombre=@nombre,apellidos=@apellidos,pas=@pas,
		usr=@usr,tipo_doc=@tipo_doc,num_doc=@num_doc,
		direccion=@direccion,email=@email,estado=@estado
		WHERE id=@id
		end
	end

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_DETALLE_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZAR_DETALLE_APODERADO](
@id_usuario bigint,
@trabajo varchar(100),
@direccion varchar(100),
@telefono varchar(12)
)
as
UPDATE tb_apoderado SET trabajo=@trabajo,direccion=@direccion,telefono=@telefono WHERE id_usuario=@id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_AGEGAR_CURSO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGEGAR_CURSO](
@descripcion varchar(50)
)
as
INSERT INTO tb_cursos (descripcion) VALUES (@descripcion)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_ALUMNO_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_ALUMNO_APODERADO](
@id_apoderado bigint,
@id_alumno bigint
)
as
INSERT INTO tb_apoderado_alumno (id_apoderado,id_alumno) VALUES (@id_apoderado,@id_alumno)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_CLICLO_ACADEMICO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_CLICLO_ACADEMICO](
@nombre varchar(50),
@inicio date,
@fin date
)
as
INSERT INTO tb_cliclo_academico (nombre,fecha_ini,fech_fin) VALUES (@nombre,@inicio,@fin)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_CURSO_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_CURSO_DOCENTE](
@docente bigint,
@curso bigint
)
as
INSERT INTO tb_docente_curso (id_docente,id_curso) VALUES (@docente,@curso)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_CURSO_MALLA]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_CURSO_MALLA](
@id_grado int,
@id_curso int
)
as
INSERT INTO tb_malla_curricular (id_grado,id_curso) VALUES (@id_grado,@id_curso)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_DETALLE_ALUMNO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_DETALLE_ALUMNO](
@id_usuario bigint,
@fech_nac date
)
as
INSERT INTO tb_alumnos (id_usuario,fech_nac) VALUES (@id_usuario,@fech_nac)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_GRADOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_GRADOS](
@descripcion varchar(100),
@sigla varchar(10)
)
as
INSERT INTO tb_grados (descripcion,sigla) VALUES (@descripcion,@sigla)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_PERMISOS_ADMINISTRATIVO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_PERMISOS_ADMINISTRATIVO](
@id bigint
)
as
INSERT INTO tb_permiso_usuario(id_usuario,id_permiso)
SELECT @id,id_permiso FROM tb_pantilla_cargo_rol where id=1

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGA_USUARIO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGA_USUARIO](
@nombre	varchar(100),
@apellidos	varchar(100),
@usr	varchar(20),
@tipo_doc	int,
@num_doc	varchar(15),
@direccion	varchar(200),
@email	varchar(100)
)
as
DECLARE
@fecha datetime = SYSDATETIME(),
@psw varchar(6) = SUBSTRING(CONVERT(varchar(255), NEWID()),1, 6)
INSERT INTO tb_usuarios (nombre,apellidos,usr,pas,tipo_doc,num_doc,direccion,email,fecha_reg)
VALUES (@nombre,@apellidos,@usr,@psw,@tipo_doc,@num_doc,@direccion,@email,@fecha)
SELECT id FROM tb_usuarios WHERE num_doc=@num_doc AND fecha_reg=@fecha

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_APDERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_APDERADO](
@id_usuario bigint,
@trabajo varchar(100),
@direccion varchar(100),
@telefono varchar(12)
)
as
INSERT INTO tb_apoderado (id_usuario,trabajo,direccion,telefono) VALUES (@id_usuario,@trabajo,@direccion,@telefono) 

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_DETALLE_ADMINISTRATIVO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_DETALLE_ADMINISTRATIVO](
@id_usuario	bigint,
@fech_nac	date,
@puesto	varchar(100),
@telefono	varchar(12)
)
as
INSERT INTO tb_administrativos (id_usuario,fech_nac,puesto,telefono) 
VALUES (@id_usuario,@fech_nac,@puesto,@telefono)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_DETALLE_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_DETALLE_DOCENTE](
@id_usuario	bigint,
@fech_nac	date,
@telefono	varchar(12)
)
as
INSERT INTO tb_docentes (id_usuario,fech_nac,telefono) VALUES (@id_usuario,@fech_nac,@telefono)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_PERMISO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_PERMISO](
@id_usuario bigint,
@id_permiso bigint
)
as
INSERT INTO tb_permiso_usuario (id_usuario,id_permiso) VALUES (@id_usuario,@id_permiso)

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_PERMISO_ALUMNO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_PERMISO_ALUMNO](
@id bigint
)
as
INSERT INTO tb_permiso_usuario(id_usuario,id_permiso)
SELECT @id,id_permiso FROM tb_pantilla_cargo_rol where id=3

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_PERMISO_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_PERMISO_APODERADO](
@id bigint
)
as
INSERT INTO tb_permiso_usuario(id_usuario,id_permiso)
SELECT @id,id_permiso FROM tb_pantilla_cargo_rol where id=4

GO
/****** Object:  StoredProcedure [dbo].[SP_AGREGAR_PERMISO_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_AGREGAR_PERMISO_DOCENTE](
@id bigint
)
as
INSERT INTO tb_permiso_usuario(id_usuario,id_permiso)
SELECT @id,id_permiso FROM tb_pantilla_cargo_rol where id=2

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_ADMINISTRATIVO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_ADMINISTRATIVO](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos,us.tipo_doc,
tpoDoc.descripcion,us.num_doc,us.direccion,us.email,
CONVERT(varchar,adm.fech_nac,121),adm.puesto,adm.telefono,us.estado as 'idEstado',
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr 
FROM tb_administrativos adm 
INNER JOIN tb_usuarios us ON us.id=adm.id_usuario
INNER JOIN tb_tipo_documento tpoDoc ON tpoDoc.id=us.tipo_doc 
WHERE adm.id_usuario=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_ALUMNO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_ALUMNO](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos,us.email,us.direccion,us.tipo_doc,tpoDoc.descripcion,us.num_doc,us.estado as 'idEdtado',
CONVERT(varchar,al.fech_nac,121),
case 
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr
FROM tb_alumnos al 
INNER JOIN tb_usuarios us ON al.id_usuario=us.id 
INNER JOIN tb_tipo_documento tpoDoc ON us.tipo_doc=tpoDoc.id
WHERE al.id_usuario=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_CICLO_ACADEMICO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_CICLO_ACADEMICO](
@id int 
)
as
SELECT cl.id,cl.nombre,CONVERT(varchar,fecha_ini,121) as 'inicio',CONVERT(varchar,fech_fin,121) as 'fin',
cl.estado 
FROM tb_cliclo_academico cl WHERE cl.id=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_COINCIDENCIAS_USERNAME]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_COINCIDENCIAS_USERNAME](
@username varchar(20)
)
as
SELECT COUNT(*) FROM tb_usuarios where usr=@username

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_CURSO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_CURSO](
@id_curso int
)
as
SELECT id,descripcion,estado FROM tb_cursos WHERE id=@id_curso

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_GRADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_GRADO](
@id_grado int
)
as
SELECT id,descripcion,sigla,estado FROM tb_grados WHERE id=@id_grado

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_SECCIONES]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_SECCIONES](
@id int
)
as
SELECT sc.id,sc.descripcion,sc.estado as 'idEstado',
case
	when sc.estado=1 then 'Activo'
	when sc.estado=0 then 'Inactivo'
end as 'estado'
FROM tb_secciones sc WHERE sc.id=@id  

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCA_USUARIO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCA_USUARIO](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos,tpoDc.descripcion,us.num_doc,us.email,us.direccion FROM tb_usuarios us 
INNER JOIN tb_tipo_documento tpoDc ON tpoDc.id=us.tipo_doc 
WHERE us.id=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCAR_APODERADO](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos,us.email,us.direccion,us.tipo_doc,tpoDoc.descripcion as 'documentoDesc',us.num_doc,
apo.trabajo,apo.telefono,apo.direccion as 'dirTrabajo',us.estado as 'idEstado',
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr 
FROM tb_apoderado apo 
INNER JOIN tb_usuarios us ON us.id=apo.id_usuario
INNER JOIN tb_tipo_documento tpoDoc ON tpoDoc.id=us.tipo_doc
WHERE apo.id_usuario=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCAR_DOCENTE](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos,us.tipo_doc,tpoDoc.descripcion,
us.num_doc,us.direccion,us.email,CONVERT(varchar,dc.fech_nac,121),dc.telefono,us.estado as 'idEdtado',
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr 
FROM tb_docentes dc 
INNER JOIN tb_usuarios us ON us.id=dc.id_usuario
INNER JOIN tb_tipo_documento tpoDoc ON tpoDoc.id=us.tipo_doc 
WHERE dc.id_usuario=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_CONTROL_PERMISOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CONTROL_PERMISOS](
@id bigint,
@permiso int
)
as
SELECT count(*) FROM tb_permiso_usuario pr INNER JOIN tb_usuarios us ON us.id=pr.id_usuario  WHERE id_usuario=@id AND id_permiso=@permiso AND us.estado=1

GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_ALUMNO_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ELIMINA_ALUMNO_APODERADO](
@id_apoderado bigint,
@id_alumno bigint
)
as
DELETE FROM tb_apoderado_alumno WHERE id_alumno=@id_alumno AND id_apoderado=@id_apoderado

GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_CURSO_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ELIMINA_CURSO_DOCENTE](
@docente bigint,
@curso bigint
)
as
DELETE FROM tb_docente_curso WHERE id_docente=@docente AND id_curso=@curso
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINA_CURSO_MALLA]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ELIMINA_CURSO_MALLA](
@id_grado int,
@id_curso int
)
as
DELETE FROM tb_malla_curricular WHERE id_curso=@id_curso AND id_grado=@id_grado

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OPTIONS_ALUMNO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LIST_OPTIONS_ALUMNO]
as
SELECT us.id,us.nombre,us.apellidos,tpo.descripcion,us.num_doc 
FROM tb_alumnos al 
INNER JOIN tb_usuarios us on us.id=al.id_usuario
INNER JOIN tb_tipo_documento tpo on tpo.id=us.tipo_doc 
WHERE us.estado!=0

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OPTIONS_NIVELES]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LIST_OPTIONS_NIVELES]
as
SELECT id,descripcion,sigla FROM tb_grados where estado=1

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OPTIONS_PERMISOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LIST_OPTIONS_PERMISOS]
as
SELECT id,descripcion FROM tb_permisos

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OPTIONS_USUARIO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LIST_OPTIONS_USUARIO]
as
SELECT us.id,us.nombre,tpo.descripcion,us.num_doc 
FROM tb_usuarios us
INNER JOIN tb_tipo_documento tpo ON us.tipo_doc=tpo.id
WHERE us.estado = 1  

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTA_ALUMNO_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTA_ALUMNO_APODERADO](
@id bigint
)
as
SELECT us.id,us.nombre,us.apellidos 
FROM tb_apoderado_alumno apoAl 
INNER JOIN tb_usuarios us ON us.id=apoAl.id_alumno
WHERE apoAl.id_apoderado=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTA_CURSOS_DOCENTE]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTA_CURSOS_DOCENTE](
@id bigint
)
as
SELECT cr.id,cr.descripcion,
case
	when cr.estado=1 then 'Activo'
	when cr.estado=0 then 'Inactivo'
end as 'estado' 
FROM tb_docente_curso dccr
INNER JOIN tb_cursos cr ON cr.id=dccr.id_curso
WHERE dccr.id_docente=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTA_MALLA_CURRICULAR]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--malla curri
create procedure [dbo].[SP_LISTA_MALLA_CURRICULAR](
@id_grado int
)
as
SELECT cr.id,cr.descripcion FROM tb_malla_curricular mll 
INNER JOIN tb_cursos cr ON cr.id=mll.id_curso 
WHERE mll.id_grado=@id_grado

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTA_PERMISOS_BY_USER]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTA_PERMISOS_BY_USER](
@id bigint
)
as
SELECT pr.titulo,pr.descripcion,pr.icono,pr.controlador FROM tb_permiso_usuario prU INNER JOIN tb_permisos pr ON pr.id=prU.id_permiso WHERE prU.id_usuario=@id

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ADMINISTRATIVOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_ADMINISTRATIVOS]
as
SELECT us.id,us.nombre,us.apellidos,us.email,
adm.puesto,adm.telefono,
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr
FROM tb_administrativos adm INNER JOIN tb_usuarios us ON us.id=adm.id_usuario 

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_ALUMNOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_ALUMNOS]
as
SELECT us.id,us.nombre,us.apellidos,us.email,convert(varchar,alm.fech_nac,121),
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado'
FROM tb_alumnos alm 
INNER JOIN tb_usuarios us ON alm.id_usuario=us.id

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_APODERADO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_APODERADO]
as
SELECT
us.id,us.nombre,us.apellidos,us.email,apo.telefono,apo.trabajo,apo.direccion as 'dirTrabajo',
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr 
FROM tb_apoderado apo INNER JOIN tb_usuarios us ON us.id=apo.id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CICLOS_ACADEMICOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_CICLOS_ACADEMICOS]
as
SELECT cl.id,cl.nombre,CONVERT(varchar,cl.fecha_ini,121) as 'inicio',CONVERT(varchar,cl.fech_fin,121) as 'fin',
case
	when cl.estado=1 then 'Activo'
	when cl.estado=0 then 'Terminado'
end as 'estado'
FROM tb_cliclo_academico cl

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_CURSOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_CURSOS]
as
SELECT  cr.id,cr.descripcion,
case
	when cr.estado=1 then 'Activo'
	when cr.estado=0 then 'Inactivo'
end as 'estado'
FROM tb_cursos cr 

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_DOCENTES]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_DOCENTES]
as
SELECT us.id,us.nombre,us.apellidos,us.email,
dc.telefono,CONVERT(varchar,dc.fech_nac,121),
case
	when us.estado=1 then 'Activo'
	when us.estado=0 then 'Inactivo'
end as 'estado',us.usr
FROM tb_docentes dc INNER JOIN tb_usuarios us ON us.id=dc.id_usuario

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_GRADOS]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_GRADOS]
as
SELECT id,descripcion,sigla,
case 
	when estado=1 then 'Activo'
	when estado=0 then 'Inactivo'
end as 'estado'
FROM tb_grados

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_PERMISOS_USUARIO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_PERMISOS_USUARIO](
@id_usuario bigint
)
as
SELECT pr.id,pr.descripcion 
FROM tb_permiso_usuario prUs INNER JOIN tb_permisos pr ON pr.id=prUs.id_permiso 
WHERE prUs.id_usuario=@id_usuario 

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_TIPO_DOCUMENTO]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LISTAR_TIPO_DOCUMENTO]
as
SELECT id,descripcion FROM tb_tipo_documento 

GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 24/11/2018 12:47:14 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LOGIN](
@user varchar(20),
@pass varchar(10)
)
as
SELECT us.id,us.nombre,us.apellidos
FROM tb_usuarios us WHERE (us.usr=@user OR us.num_doc=@user) AND (us.pas=@pass) AND estado=1 --AND us.pas=@pass --AND estado=1

GO
