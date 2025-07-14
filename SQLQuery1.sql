USE master 
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name='dbStudents')
DROP DATABASE [dbStudents]
GO

Create database [dbStudents]
GO

USE [dbStudents]
GO

CREATE TABLE [dbo].[tStudent](
	[fStuId] [char](6) NOT NULL,
	[fName] [nvarchar](30) NOT NULL,
	[fEmail] [nvarchar](40) NULL,
	[fScore] [int] NULL,
    PRIMARY KEY(fStuId)
)
GO

INSERT [dbo].[tStudent] ([fStuId], [fName], [fEmail], [fScore]) VALUES (N'112001', N'�����B', N'ding@gmail.com', 92)
INSERT [dbo].[tStudent] ([fStuId], [fName], [fEmail], [fScore]) VALUES (N'112002', N'�ߺ���', N'nee@gmail.com', 68)
INSERT [dbo].[tStudent] ([fStuId], [fName], [fEmail], [fScore]) VALUES (N'112003', N'���p�D', N'kim@gmail.com', 88)
GO
