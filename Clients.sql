USE [master]
GO
/****** Object:  Database [Clients]    Script Date: 6/22/2015 2:26:18 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Clients')
BEGIN
CREATE DATABASE [Clients]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Clients', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Clients.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Clients_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Clients_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [Clients] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clients].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clients] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clients] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clients] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clients] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clients] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clients] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Clients] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clients] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clients] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clients] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clients] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clients] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clients] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clients] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clients] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Clients] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clients] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clients] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clients] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clients] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clients] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clients] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clients] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Clients] SET  MULTI_USER 
GO
ALTER DATABASE [Clients] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clients] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clients] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clients] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Clients] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Clients]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/22/2015 2:26:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UsersID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (1, N'Raphael', N'Kenneth', N'erat.volutpat@luctusipsumleo.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (2, N'Dieter', N'Sawyer', N'risus.a@imperdietullamcorper.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (3, N'Zachary', N'Barry', N'sed.tortor.Integer@malesuadavel.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (4, N'Coby', N'Louis', N'est@Phasellusdapibusquam.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (5, N'Keegan', N'Emerson', N'elit@sagittis.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (6, N'Jin', N'Jerome', N'Phasellus@euismodetcommodo.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (7, N'Odysseus', N'Rudyard', N'Nulla.tincidunt.neque@ullamcorpermagna.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (8, N'Leo', N'Brody', N'vulputate.velit.eu@tempusrisusDonec.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (9, N'Yasir', N'Damian', N'ut.pellentesque.eget@commodoipsumSuspendisse.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (10, N'Russell', N'Colt', N'lorem.lorem.luctus@necorci.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (11, N'Drew', N'Jerry', N'condimentum@Praesenteunulla.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (12, N'Amal', N'Griffin', N'Curae@Etiam.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (13, N'Cadman', N'Leo', N'Fusce.feugiat.Lorem@dictumcursusNunc.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (14, N'Lucius', N'Theodore', N'eu.nibh.vulputate@dis.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (15, N'Nathan', N'Gareth', N'urna.et.arcu@Aliquamrutrum.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (16, N'Malachi', N'Cole', N'ipsum@felisegetvarius.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (17, N'Cedric', N'Alan', N'vulputate.posuere@purusac.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (18, N'Dustin', N'Christopher', N'metus@Quisquetinciduntpede.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (19, N'Magee', N'Buckminster', N'mus@lobortis.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (20, N'Lars', N'Talon', N'malesuada@velnislQuisque.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (21, N'Alan', N'Ira', N'et@luctus.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (22, N'Finn', N'Christian', N'tellus@sagittisDuisgravida.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (23, N'Levi', N'Jerome', N'Class.aptent@Phasellus.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (24, N'Christian', N'Thomas', N'Phasellus@nisiaodio.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (25, N'Reed', N'Hunter', N'non@tellusjusto.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (26, N'Jonah', N'Allistair', N'nunc@aliquetmolestietellus.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (27, N'Mufutau', N'Fitzgerald', N'purus@penatibus.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (28, N'Colt', N'Merritt', N'diam.eu.dolor@dictummiac.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (29, N'Beau', N'Damon', N'mi.fringilla@venenatisamagna.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (30, N'Kane', N'Fletcher', N'Cras@dolor.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (31, N'Ashton', N'Brent', N'elit.fermentum@lorem.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (32, N'Shad', N'Lev', N'mauris.sagittis@ipsumnuncid.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (33, N'Berk', N'Melvin', N'Fusce.fermentum.fermentum@purusmauris.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (34, N'Kennedy', N'Ira', N'et@et.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (35, N'Asher', N'Dale', N'pede@Phasellusliberomauris.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (36, N'Isaac', N'Zachary', N'et@euduiCum.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (37, N'Gabriel', N'Kaseem', N'eu@metus.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (38, N'Asher', N'Alexander', N'placerat@nibhQuisquenonummy.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (39, N'Luke', N'Lionel', N'lectus.pede@Integeraliquam.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (40, N'Basil', N'Garrison', N'Sed.nunc.est@non.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (41, N'Ahmed', N'Victor', N'sem.elit.pharetra@semsempererat.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (42, N'Demetrius', N'Herrod', N'sociis@imperdietnonvestibulum.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (43, N'Alec', N'Palmer', N'Vestibulum@augueeu.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (44, N'Matthew', N'Ezra', N'justo@Vivamusrhoncus.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (45, N'Mason', N'Quinlan', N'diam@orci.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (46, N'Hamish', N'Carl', N'Aenean.massa.Integer@malesuada.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (47, N'Cooper', N'Harper', N'Pellentesque.ut.ipsum@Duis.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (48, N'Hilel', N'Wing', N'ullamcorper.Duis@Cumsociisnatoque.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (49, N'Isaac', N'Thor', N'sit.amet.risus@molestieorci.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (50, N'Sean', N'Christian', N'ullamcorper.viverra@magnaPraesent.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (51, N'Lester', N'Dominic', N'eros.Proin.ultrices@eratSednunc.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (52, N'Vladimir', N'Wesley', N'Suspendisse.sagittis@sit.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (53, N'Drake', N'Igor', N'mi.tempor.lorem@famesac.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (54, N'Vernon', N'Randall', N'Aliquam.erat.volutpat@arcueuodio.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (55, N'Keefe', N'Hamilton', N'vulputate.lacus@ullamcorper.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (56, N'Carl', N'Adrian', N'mollis.nec@Pellentesquehabitantmorbi.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (57, N'Lawrence', N'Fitzgerald', N'est.Nunc@Cumsociisnatoque.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (58, N'Cedric', N'Uriah', N'at.pede@odio.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (59, N'Raphael', N'Grant', N'sed.est@Integer.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (60, N'Rigel', N'Slade', N'Duis.ac@Nullaeuneque.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (61, N'Stewart', N'Colin', N'Nullam@acfermentum.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (62, N'Gabriel', N'Malcolm', N'mi.tempor@nullavulputate.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (63, N'Gil', N'Gary', N'pede.Cras@Integer.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (64, N'Jerry', N'Ronan', N'bibendum@in.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (65, N'Lamar', N'Amery', N'lorem@et.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (66, N'Malachi', N'Merrill', N'lobortis@nonsollicitudina.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (67, N'Amos', N'Nigel', N'ullamcorper.Duis.cursus@lacus.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (68, N'Carl', N'Hayes', N'convallis.erat.eget@perconubianostra.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (69, N'Arden', N'Ciaran', N'Donec.tempor.est@sempererat.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (70, N'Denton', N'James', N'ultrices@egestas.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (71, N'Wang', N'Hunter', N'cursus@Donecfelis.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (72, N'Carlos', N'Keith', N'quis@semperauctor.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (73, N'Otto', N'Laith', N'Mauris.vestibulum@convallis.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (74, N'Hunter', N'Hector', N'tempor.arcu.Vestibulum@nullaCras.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (75, N'Joseph', N'Avram', N'sagittis.Duis.gravida@ut.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (76, N'Kane', N'Noah', N'rhoncus.id.mollis@Fuscedolorquam.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (77, N'Amos', N'Arden', N'dictum@elementum.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (78, N'Allen', N'Malik', N'ornare.elit@velit.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (79, N'Simon', N'Steel', N'Integer.vulputate.risus@ipsum.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (80, N'Thor', N'Lev', N'nec.cursus.a@rhoncusProin.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (81, N'Gannon', N'Fritz', N'Vivamus.euismod.urna@tincidunt.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (82, N'Berk', N'Bruce', N'felis.adipiscing@risus.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (83, N'Kibo', N'Eric', N'magna@nequeet.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (84, N'Lane', N'Reed', N'dolor@Curabitur.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (85, N'Amery', N'Cruz', N'ante.Maecenas@magna.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (86, N'Sebastian', N'Kermit', N'Proin.non.massa@milaciniamattis.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (87, N'Cairo', N'Holmes', N'quam.elementum@etlacinia.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (88, N'Ulysses', N'Perry', N'nunc.id.enim@Nuncuterat.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (89, N'William', N'Addison', N'Integer.urna@Sedmolestie.ca')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (90, N'Kennan', N'William', N'nisi.Mauris@molestietortor.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (91, N'Jameson', N'Lance', N'amet@conubianostra.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (92, N'Martin', N'Simon', N'vitae.aliquam@eleifend.edu')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (93, N'Brennan', N'Bert', N'mattis@venenatis.org')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (94, N'Hop', N'Abraham', N'faucibus.id@aliquetodio.net')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (95, N'Rajah', N'Nathaniel', N'vestibulum@utpharetrased.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (96, N'Kirk', N'Jin', N'varius.orci@Nullamlobortis.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (97, N'Barclay', N'Jason', N'sem.egestas.blandit@blanditviverra.co.uk')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (98, N'Edward', N'Louis', N'euismod.in@commodo.com')
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (99, N'Knox', N'Nolan', N'penatibus.et.magnis@eutelluseu.co.uk')
GO
INSERT [dbo].[Users] ([UsersID], [FirstName], [LastName], [Email]) VALUES (100, N'Callum', N'Hilel', N'nulla.Donec.non@pedeblanditcongue.edu')
SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [Clients] SET  READ_WRITE 
GO
