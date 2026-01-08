IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
 BEGIN
    CREATE TABLE [dbo].[DimCustomer](
        [CustomerKey] [numeric] IDENTITY(1,1) NOT NULL,
        [CustomerID] [numeric](10, 0) NOT NULL,
        [Name] [varchar](55) NOT NULL,
        [TaxpayerNumber] [varchar](20) NOT NULL,
        [Fax] [varchar](60) NOT NULL,
        [Phone] [varchar](60) NOT NULL,
        [Contact] [varchar](30) NOT NULL,
        [Address] [varchar](100) NOT NULL,
        [ZipCode] [varchar](10) NOT NULL,
        [City] [varchar](50) NULL,
        [Location] [varchar](50) NOT NULL,
        [Type] [varchar](20) NOT NULL,
        [Email] [varchar](50) NOT NULL,
        [EffectiveDate] [datetime] NOT NULL,
        [ExpiredDate] [datetime] NULL,   
        CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
    ) ON [PRIMARY]
    
    CREATE NONCLUSTERED INDEX [NonClusteredIndex-20260106-185427] ON [dbo].[DimCustomer]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    END