IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
BEGIN
    CREATE TABLE [dbo].[DimEmployee](
        [EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
        [EmployeeID] [numeric](6, 0) NOT NULL,
        [Initials] [varchar](3) NOT NULL,
        [Code] [varchar](20) NOT NULL,
        [Forename] [varchar](50) NOT NULL,
        [Surname] [varchar](50) NOT NULL,
        [FullName] [varchar](100) NOT NULL,
        [Group] [varchar](20) NOT NULL,
        [DepartmentName] [varchar](50) NOT NULL,
        [Email] [varchar](100) NOT NULL,
        [EffectiveDate] [datetime] NOT NULL,
        [ExpiredDate] [datetime] NULL,
        CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeKey] ASC)
    ) ON [PRIMARY]
    CREATE NONCLUSTERED INDEX [NonClusteredIndex-EmployeeID] ON [dbo].[DimEmployee]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
END