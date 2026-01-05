IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactSale')
    CREATE TABLE [dbo].[FactSale](
        [SaleKey] [bigint] IDENTITY(1,1) NOT NULL,
        [DateKey] [int] NOT NULL,
        [CustomerKey] [int] NOT NULL,
        [ProductKey] [int] NOT NULL,
        [EmployeeKey] [int] NOT NULL,
        [TransactionID] [char](9) NOT NULL,
        [ItemNumber] [tinyint] NOT NULL,
        [Quantity] [int] NULL,
        [Amount] [money] NULL,
        CONSTRAINT [PK_FactSale] PRIMARY KEY CLUSTERED ([SaleKey] ASC),
        CONSTRAINT [FK_FactSale_DimDate] FOREIGN KEY([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
        CONSTRAINT [FK_FactSale_DimCustomer] FOREIGN KEY([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
        CONSTRAINT [FK_FactSale_DimProduct] FOREIGN KEY([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey]),
        CONSTRAINT [FK_FactSale_DimEmployee] FOREIGN KEY([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
    ) ON [PRIMARY]