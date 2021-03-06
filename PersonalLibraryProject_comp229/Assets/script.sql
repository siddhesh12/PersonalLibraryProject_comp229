USE [Comp229TeamProject]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 11/25/2016 6:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [varchar](8000) NOT NULL,
	[book_detail] [varchar](8000) NULL,
	[is_available] [bit] NOT NULL,
	[user_id] [int] NULL,
	[image_url] [varchar](8000) NULL,
	[date] [date] NULL,
	[isbn_no] [varchar](5000) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 11/25/2016 6:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reviews](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[reviews_msg] [varchar](8000) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/25/2016 6:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](5000) NOT NULL,
	[last_name] [varchar](5000) NULL,
	[age] [int] NULL,
	[password] [varchar](8000) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Users]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Users1] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Users1]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Books] FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([book_id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Books]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO


----[Users]
INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('siddhesh','mahadeshwar',25, 'siddhesh')

INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('Aakash','Chirstian',20, 'aakash')

INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('bob','sandy',30, 'bob')

INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('mac','luis',10, 'mac')

INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('barry','cherry',50, 'barry')

--- admin user 
INSERT INTO Comp229TeamProject.[dbo].[Users] (Name, last_name, age, password)
VALUES ('Admin','admin',25, 'Admin12345')
---

--[Books]
INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Autocad Design', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/11/10', 121106031)


INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Mechanics', 'Put away that pencil and paper and start putting the power of 
Mechanics 2012 to work in your mechanic Tools projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through Mechanical basics and provides you with a solid u
nderstanding of the latest Mechanical tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your Mechanics 2012 screen 
and highlight the importance of Mechanics Model view, 
which shows different line weights for printing in different colors.', 1, '2016/11/05', 121106032)

INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('IT Technicals', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/11/12', 121106033)


INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Robotics', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/12/01', 121106034)


INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Basic Mechanotrics', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/12/02', 121106035)

INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Science and Technology', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/11/25', 121106036)


INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Psycology', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 1, '2016/11/14', 121106037)


INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Physical Science', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 0, '2016/10/25', 121106038)

INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Nurological Rebirth', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.',0, '2016/10/27', 121106039)

INSERT INTO Comp229TeamProject.[dbo].[Books] (book_name, book_detail, is_available, date, isbn_no)
VALUES ('Science', 'Put away that pencil and paper and start putting the power of AutoCAD 2014 to work in your CAD projects and designs. From setting up 
your drawing environment to using text, dimensions, hatching, and more, 
this guide walks you through AutoCAD basics and provides you with a solid u
nderstanding of the latest CAD tools and techniques. You’ll also benefit from the 
full-color illustrations that mirror exactly what you’ll see on your AutoCAD 2014 screen 
and highlight the importance of AutoCAD’s Model view, 
which shows different line weights for printing in different colors.', 0, '2016/01/08', 121106010)


--Review
INSERT INTO Comp229TeamProject.[dbo].[Reviews](user_id, book_id, Reviews_msg)
VALUES (1, 1, 'Awesome')

INSERT INTO Comp229TeamProject.[dbo].[Reviews](user_id, book_id, Reviews_msg)
VALUES (1, 1, 'Great experience of designing')

INSERT INTO Comp229TeamProject.[dbo].[Reviews](user_id, book_id, Reviews_msg)
VALUES (1, 1, 'easy to access and time saving')

INSERT INTO Comp229TeamProject.[dbo].[Reviews](user_id, book_id, Reviews_msg)
VALUES (1, 1, 'this is the best book I ever got')

INSERT INTO Comp229TeamProject.[dbo].[Reviews](user_id, book_id, Reviews_msg)
VALUES (1, 1, 'Good understanding')