USE [CompaniesManagementSystemDB]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 06-May-24 09:57:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[CompID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[CompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 06-May-24 09:57:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CompID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 06-May-24 09:57:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Account] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CompID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06-May-24 09:57:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProdID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[CompID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70', N'ABC Corporation', N'123 Main Street, Houston, TX')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'cee9d768-81f6-4004-0560-08dc6a605bad', N'XYZ Industries', N'456 Oak Avenue, San Francisco, CA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'a356167d-4d86-4cf7-0561-08dc6a605bad', N'Tech Innovations Ltd.', N'789 Elm Street, Chicago, IL')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'04a10358-c407-4c60-0562-08dc6a605bad', N'Global Solutions Inc.', N'101 Maple Avenue, New York, NY')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'3de61a74-2b7c-439b-0563-08dc6a605bad', N'Innovate Enterprises', N'202 Pine Street, Los Angeles, CA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'226b7be5-d65a-4ec6-7245-08dc6cfb0b99', N'Smith & Co.', N'789 Oak Lane, Texas, TX')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'91f776fd-5aff-47b1-7246-08dc6cfb0b99', N'Johnson Industries', N'101 Pine Road, Florida, FL')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'86078891-6ad4-4b9c-7247-08dc6cfb0b99', N'Acme Corporation', N'222 Maple Street, Illinois, IL')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'dbe5f71f-3883-46f3-7248-08dc6cfb0b99', N'Global High Solutions Ltd.', N'333 Cedar Avenue, Pennsylvania, PA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'e9845711-ef20-4fef-7249-08dc6cfb0b99', N'Fintech Innovations Inc.', N'444 Birch Lane, Ohio, OH')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'7eedeb97-830d-4570-724a-08dc6cfb0b99', N'Sunrise Industries', N'555 Willow Road, Michigan, MI')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'1f1427b3-cb7e-45c6-724b-08dc6cfb0b99', N'Bright Ideas Co.', N'666 Sycamore Avenue, Georgia, GA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'3b979b44-12fb-4f5a-724c-08dc6cfb0b99', N'Pacific Ventures', N'777 Walnut Street, Washington, WA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'f4e9b724-e72e-4445-724d-08dc6cfb0b99', N'Summit Enterprises', N'888 Cherry Lane, Massachusetts, MA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'7b0f1bab-b332-4aef-724e-08dc6cfb0b99', N'Pioneer Solutions', N'999 Magnolia Road, Virginia, VA')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'16d0b0d9-196c-4bf8-724f-08dc6cfb0b99', N'Evergreen Enterprises', N'111 Spruce Street, Colorado, CO')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'1d832aff-b6d8-4720-7250-08dc6cfb0b99', N'Dynamic Solutions', N'222 Cypress Avenue, Arizona, AZ')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'e646043c-23d1-4842-7251-08dc6cfb0b99', N'Northern Lights Ltd.', N'333 Oak Street, Oregon, OR')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'3a1c5045-afda-49dd-7252-08dc6cfb0b99', N'Sunset Enterprises', N'777 Maple Avenue, Nevada, NV')
INSERT [dbo].[Companies] ([CompID], [Name], [Address]) VALUES (N'a72279bd-0ba0-47ab-7253-08dc6cfb0b99', N'Blue Sky Corporation', N'888 Pine Street, Hawaii, HI')
GO
INSERT [dbo].[Departments] ([DepID], [Name], [CompID]) VALUES (N'a3b0e3f1-d7f0-4263-f232-08dc6a612225', N'Sales', N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Departments] ([DepID], [Name], [CompID]) VALUES (N'55ab724b-f3f7-4c41-f3d8-08dc6a618b0b', N'Marketing', N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Departments] ([DepID], [Name], [CompID]) VALUES (N'0f5e0e29-40f5-44ac-f3d9-08dc6a618b0b', N'Engineering', N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Departments] ([DepID], [Name], [CompID]) VALUES (N'98435f25-998b-4a59-f3da-08dc6a618b0b', N'Human Resources', N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Departments] ([DepID], [Name], [CompID]) VALUES (N'faec514a-f5da-46b6-f3db-08dc6a618b0b', N'Research and Development', N'a356167d-4d86-4cf7-0561-08dc6a605bad')
GO
INSERT [dbo].[Employees] ([EmpID], [Name], [Position], [Account], [PhoneNumber], [Address], [CompID]) VALUES (N'ea339843-0592-40a7-99e1-08dc6a388817', N'Clark', N'Sales', N'clark@mail.com', N'0000000000', N'Houston, CA', N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Employees] ([EmpID], [Name], [Position], [Account], [PhoneNumber], [Address], [CompID]) VALUES (N'08d045a0-108b-4d02-9ffa-08dc6a620a72', N'Emma', N'Marketing', N'emma@mail.com', N'1111111111', N'New York, NY', N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Employees] ([EmpID], [Name], [Position], [Account], [PhoneNumber], [Address], [CompID]) VALUES (N'14d88da0-ce5d-4da5-9ffb-08dc6a620a72', N'John', N'Engineer', N'john@mail.com', N'2222222222', N'San Francisco, CA', N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Employees] ([EmpID], [Name], [Position], [Account], [PhoneNumber], [Address], [CompID]) VALUES (N'b3a2fc86-6e6d-439c-9ffc-08dc6a620a72', N'Sophia', N'HR Manager', N'sophia@mail.com', N'3333333333', N'Los Angeles, CA', N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Employees] ([EmpID], [Name], [Position], [Account], [PhoneNumber], [Address], [CompID]) VALUES (N'ee1a5868-24f0-4647-9ffd-08dc6a620a72', N'William', N'Developer', N'william@mail.com', N'4444444444', N'Chicago, IL', N'a356167d-4d86-4cf7-0561-08dc6a605bad')
GO
INSERT [dbo].[Products] ([ProdID], [Name], [Description], [Price], [CompID]) VALUES (N'47a0008e-f441-4b09-5a24-08dc6a629ee4', N'Smartphone X', N'A powerful smartphone with advanced features.', 299, N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Products] ([ProdID], [Name], [Description], [Price], [CompID]) VALUES (N'e57f493f-53fb-417f-5a25-08dc6a629ee4', N'Laptop Y', N'A lightweight laptop perfect for work and entertainment.', 1299, N'ce5ceccd-9d4c-4ba8-de5f-08dc6a37ba70')
INSERT [dbo].[Products] ([ProdID], [Name], [Description], [Price], [CompID]) VALUES (N'bd90c6a9-25a5-4bcd-5a26-08dc6a629ee4', N'Headphones Z', N'Premium wireless headphones with noise-cancellation technology.', 299, N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Products] ([ProdID], [Name], [Description], [Price], [CompID]) VALUES (N'52883c17-384a-42d0-5a27-08dc6a629ee4', N'Tablet W', N'A versatile tablet for productivity and entertainment on the go.', 499, N'cee9d768-81f6-4004-0560-08dc6a605bad')
INSERT [dbo].[Products] ([ProdID], [Name], [Description], [Price], [CompID]) VALUES (N'8ffa9855-cfb1-44f8-5a28-08dc6a629ee4', N'Smartwatch V', N'Stay connected and track your fitness with this stylish smartwatch.', 199, N'a356167d-4d86-4cf7-0561-08dc6a605bad')
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Companies_CompID] FOREIGN KEY([CompID])
REFERENCES [dbo].[Companies] ([CompID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Companies_CompID]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Companies_CompID] FOREIGN KEY([CompID])
REFERENCES [dbo].[Companies] ([CompID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Companies_CompID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompID] FOREIGN KEY([CompID])
REFERENCES [dbo].[Companies] ([CompID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompID]
GO
