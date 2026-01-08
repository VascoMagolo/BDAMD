IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CustomersDQP')
CREATE TABLE [dbo].[CustomersDQP](
	[Name] [varchar](55)  ,
	[Number] [numeric](10, 0)  ,
	[TaxpayerNumber] [varchar](20)  ,
	[Fax] [varchar](60)  ,
	[Phone] [varchar](60)  ,
	[Contact] [varchar](50)  ,
	[Address] [varchar](100)  ,
	[ZipCode] [varchar](10)  ,
	[City] [varchar](100) NULL,
	[Location] [varchar](50)  ,
	[CustomerType] [int]  ,
	[Email] [varchar](50)  ,
	[DQP] [nvarchar](500),
)
ELSE
	TRUNCATE TABLE CustomersDQP