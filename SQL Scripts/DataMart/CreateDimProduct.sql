IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
    CREATE TABLE [dbo].[DimProduct](
        [ProductKey] [int] IDENTITY(1,1) NOT NULL,
        [ItemCode] [char](11) NOT NULL,
        [ItemDescription] [nvarchar](50) NULL,
        [BrandDescription] [nvarchar](50) NULL,
        [SubCategoryDescription] [nvarchar](50) NULL,
        [CategoryDescription] [nvarchar](50) NULL,
        [UpmarketFlag] [char](1) NULL,
        CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
    ) ON [PRIMARY]