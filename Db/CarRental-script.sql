USE [CarRentalDB]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[TagNumber] [varchar](20) NULL,
	[Model] [varchar](50) NULL,
	[CarYear] [smallint] NULL,
	[AirConditioner] [bit] NULL,
	[Daily] [int] NULL,
	[Monthly] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[DrvLicNumber] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[City] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalOrders]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalOrders](
	[RentalOrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CarID] [int] NOT NULL,
	[RentStartDate] [datetime] NULL,
	[RentEndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [TagNumber], [Model], [CarYear], [AirConditioner], [Daily], [Monthly]) VALUES (1, N'SK 3341 SS', N'WV-Golf', 2015, 1, 2500, 15000)
INSERT [dbo].[Cars] ([CarID], [TagNumber], [Model], [CarYear], [AirConditioner], [Daily], [Monthly]) VALUES (2, N'SK 3341 SS', N'Opel-Corsa', 2013, 0, 1500, 12000)
INSERT [dbo].[Cars] ([CarID], [TagNumber], [Model], [CarYear], [AirConditioner], [Daily], [Monthly]) VALUES (3, N'BT 3341 SS', N'Audi-A3', 2019, 1, 4000, 25000)
INSERT [dbo].[Cars] ([CarID], [TagNumber], [Model], [CarYear], [AirConditioner], [Daily], [Monthly]) VALUES (4, N'BT 1231 AB', N'Mercedes-Cls', 2018, 1, 5000, 25000)
INSERT [dbo].[Cars] ([CarID], [TagNumber], [Model], [CarYear], [AirConditioner], [Daily], [Monthly]) VALUES (5, N'SK 3341 AS', N'Audi-A4', 2018, 1, 6500, 27300)
SET IDENTITY_INSERT [dbo].[Cars] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [DrvLicNumber], [FullName], [Address], [Country], [City]) VALUES (1, N'A885', N'John Wattson', N'Mimosa 79', N'USA', N'Washington')
INSERT [dbo].[Customers] ([CustomerID], [DrvLicNumber], [FullName], [Address], [Country], [City]) VALUES (2, N'A134', N'Charles Calhoun', N'Leila 64', N'USA', N'Alexandria')
INSERT [dbo].[Customers] ([CustomerID], [DrvLicNumber], [FullName], [Address], [Country], [City]) VALUES (3, N'A532', N'Mario Zdravkovski', N'Filip Vtori Makedonski 98', N'Macedonia', N'Bitola')
INSERT [dbo].[Customers] ([CustomerID], [DrvLicNumber], [FullName], [Address], [Country], [City]) VALUES (4, N'A893', N'Aleksandar Stojanovski', N'Boris Bastero 22', N'Macedonia', N'Skopje')
INSERT [dbo].[Customers] ([CustomerID], [DrvLicNumber], [FullName], [Address], [Country], [City]) VALUES (5, N'A520', N'Kevin Allen', N'Historic Road 66', N'USA', N'Guntersville')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[RentalOrders] ON 

INSERT [dbo].[RentalOrders] ([RentalOrderID], [CustomerID], [CarID], [RentStartDate], [RentEndDate]) VALUES (1, 1, 1, CAST(N'2020-01-01T16:40:18.420' AS DateTime), CAST(N'2020-02-10T09:37:31.580' AS DateTime))
INSERT [dbo].[RentalOrders] ([RentalOrderID], [CustomerID], [CarID], [RentStartDate], [RentEndDate]) VALUES (2, 2, 5, CAST(N'2020-01-01T16:40:18.420' AS DateTime), CAST(N'2020-02-01T09:37:31.580' AS DateTime))
INSERT [dbo].[RentalOrders] ([RentalOrderID], [CustomerID], [CarID], [RentStartDate], [RentEndDate]) VALUES (3, 3, 4, CAST(N'2019-01-01T16:40:18.420' AS DateTime), CAST(N'2019-02-01T09:37:31.580' AS DateTime))
INSERT [dbo].[RentalOrders] ([RentalOrderID], [CustomerID], [CarID], [RentStartDate], [RentEndDate]) VALUES (4, 2, 3, CAST(N'2020-02-10T01:34:57.453' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[RentalOrders] OFF
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([Id], [UserName], [Password], [Email], [Role]) VALUES (1, N'admin', N'123456', N'admin@gmail.com', N'admin')
INSERT [dbo].[UserLogin] ([Id], [UserName], [Password], [Email], [Role]) VALUES (2, N'user123', N'123456', N'user123@gmail.com', N'user')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
ALTER TABLE [dbo].[RentalOrders]  WITH CHECK ADD FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[RentalOrders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
/****** Object:  StoredProcedure [dbo].[AvailableCars]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AvailableCars]
AS
SELECT TagNumber,Model,CarYear,AirConditioner,Daily,Monthly
FROM Cars c
FULL JOIN RentalOrders r on c.CarID = r.CarID
WHERE RentStartDate is NULL
OR
(RentStartDate is not null AND RentEndDate is NOT NULL)
GO
/****** Object:  StoredProcedure [dbo].[Delete_car]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_car]
@carId int
AS
	DELETE FROM Cars
	WHERE CarID = @carId;
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCustomer]
@id int
AS
	DELETE FROM Customers
	WHERE CustomerID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetAllCars]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCars]
AS
SELECT c.CarID,c.TagNumber,c.Model,c.CarYear,c.AirConditioner,c.Daily,c.Monthly,r.RentStartDate,r.RentEndDate
FROM Cars c
LEFT JOIN RentalOrders r on c.CarID = r.CarID
GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomers]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCustomers]
AS
    SELECT CustomerID,DrvLicNumber,FullName,Address,Country,City
    FROM Customers;
GO
/****** Object:  StoredProcedure [dbo].[GetCar]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCar]
@id int
AS
	SELECT CarID,TagNumber,Model,CarYear,AirConditioner,Daily,Monthly
	FROM Cars
	WHERE CarID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetCustomer]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCustomer]
@id int
AS
	SELECT CustomerID,DrvLicNumber,FullName,Address,Country,City
	FROM Customers
	WHERE CustomerID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetRentalOrders]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRentalOrders]
AS
SELECT RentalOrderID,CustomerID,CarID,RentStartDate,RentEndDate
FROM RentalOrders
GO
/****** Object:  StoredProcedure [dbo].[InsertCar]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCar]
@tagNumber varchar(20),
@model varchar(50),
@carYear SMALLINT,
@AirConditioner BIT,
@daily int,
@monthly int
AS
	INSERT INTO Cars(TagNumber, Model, CarYear, AirConditioner, Daily, Monthly)
	VALUES (@tagNumber,@model,@carYear,@AirConditioner,@daily,@monthly);
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomer]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCustomer]
@drvLicNumber varchar(50),
@fullName [varchar](50),
@address [varchar](50),
@country [varchar](50),
@city [varchar](50)
AS
	INSERT INTO Customers(DrvLicNumber,FullName,Address,Country,City)
	VALUES (@drvLicNumber,@fullName,@address,@country,@city);
GO
/****** Object:  StoredProcedure [dbo].[IsCarRented]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IsCarRented]
@carId int
AS
	SELECT *
	FROM RentalOrders
	WHERE CarID = @carId AND RentStartDate IS NOT NULL AND RentEndDate IS NULL;
GO
/****** Object:  StoredProcedure [dbo].[RentEnd]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RentEnd]
@customerId int,
@carId int
AS
   UPDATE RentalOrders
   SET RentEndDate = GETDATE()
   WHERE CustomerID = @customerId AND CarID = @carId
GO
/****** Object:  StoredProcedure [dbo].[RentStart]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RentStart]
@customerId int,
@carId int
AS
   INSERT INTO RentalOrders (CustomerID, CarID,RentStartDate)
   VALUES (@customerId, @carId, GETDATE());
GO
/****** Object:  StoredProcedure [dbo].[SearchCarByName]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchCarByName]
@searchTerm NVARCHAR(30)
AS
SELECT *
FROM Cars
WHERE Model LIKE '%' + @SearchTerm + '%'
GO
/****** Object:  StoredProcedure [dbo].[UpdateCarRates]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCarRates]
@id int,
@daily int,
@monthly int
AS
	UPDATE Cars
	SET Daily = @daily, Monthly = @monthly
	WHERE CarID = @id;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerAddress]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCustomerAddress]
@id int,
@address [varchar](50)
AS
	UPDATE Customers
	SET Address = @address
	WHERE CustomerID = @id;
GO
/****** Object:  StoredProcedure [dbo].[UserLoginSp]    Script Date: 10.2.2020 01:37:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserLoginSp]  
@username varchar(50)=null,  
@password varchar(50)=null
AS
    SELECT UserName, Password, Email, Role
	from UserLogin
	where UserName=@username and password=@password 
GO
