
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE CarRental.[dbo].[Customer](
   [CustomerID] [int] IDENTITY (100, 1) NOT NULL,
   [LName] [varchar](50) NOT NULL,
   [FName] [varchar](50) NOT NULL,
   [DateCreated] [date] NOT NULL,
   [Username] [varchar](50) NOT NULL UNIQUE,
   [Email] [nvarchar](30) NOT NULL UNIQUE, 
   [Password] [nvarchar](20) NOT NULL,
   [Admin] [CHAR](1) default 'n'NOT NULL
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
   [CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table CarRental.[dbo].[CarLine] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE CarRental.[dbo].[CarLine](
   [CarLineID] [int] IDENTITY (10, 1) NOT NULL,
   [DateStart] [date] NOT NULL,
   [DateEnd] [date] NOT NULL,
   [CustomerID] [int] NOT NULL,
   [CarID] [int] NOT NULL,
 CONSTRAINT [PK_CarLine] PRIMARY KEY CLUSTERED 
(
   [CarLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/* Object: Table CarRental.[dbo].[Cars] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE CarRental.[dbo].[Cars](
   [CarID] [int] IDENTITY (10, 1) NOT NULL,
   [CarModel] [varchar](50) NOT NULL,
   [CarYear] [int] NOT NULL,
   [Price] [int] NOT NULL DEFAULT 0,
   [CarDesc] [varchar](300) NOT NULL,
   [CarStatus] [varchar](20) NOT NULL,
   
 CONSTRAINT [PK_CarID] PRIMARY KEY CLUSTERED 
(
   [CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO






ALTER TABLE CarRental.[dbo].CarLine
ADD CONSTRAINT FK_CarLine_CarID FOREIGN KEY (CarID) REFERENCES Cars(CarID)

ALTER TABLE CarRental.[dbo].CarLine
ADD CONSTRAINT FK_CarLine_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)



--Customer
INSERT INTO CarRental.[dbo].Customer(Lname,FName,DateCreated,Username,Email, Password, Admin)
VALUES ('Mingi','Jang',GETDATE(),'Ricter','jangwonh4@gmail.com', '123', 'y');



INSERT INTO CarRental.[dbo].Cars(CarModel,CarYear,Price ,CarDesc, CarStatus)
VALUES ('Accord', '2013' ,10, 'No accident', 'In Stock')
INSERT INTO CarRental.[dbo].Cars(CarModel,CarYear,Price ,CarDesc, CarStatus)
VALUES ('G70', '2017',10 , 'No accident', 'Sold Out')
INSERT INTO CarRental.[dbo].Cars(CarModel,CarYear,Price ,CarDesc, CarStatus)
VALUES ('Range rover evoque',10, '2016' , 'No accident', 'In Stock')
INSERT INTO CarRental.[dbo].Cars(CarModel,CarYear,Price ,CarDesc, CarStatus)
VALUES ('McLaren', '2017' ,10, 'No accident', 'In Stock')

UPDATE dbo.Cars  
    SET CarStatus = 'Sold Out'  
    WHERE CarID = 12