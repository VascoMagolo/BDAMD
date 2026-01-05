IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
    CREATE TABLE [dbo].[DimCustomer](
        [CustomerKey] [int] IDENTITY(1,1) NOT NULL,
        [CardID] [char](11) NOT NULL,
        [City] [nvarchar](50) NULL,
        [Region] [nvarchar](50) NULL,
        [PostalCode] [nvarchar](10) NULL,
        [Gender] [char](1) NULL,
        [DateOfBirth] [datetime] NULL,
        [MaritalStatus] [nvarchar](10) NULL,
        [HasChildren] [char](1) NULL,
        [NumChildren] [tinyint] NULL,
        CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
    ) ON [PRIMARY]