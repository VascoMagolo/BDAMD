IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
    CREATE TABLE [dbo].[DimEmployee](
        [EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
        [EmployeeID] [int] NOT NULL,
        [EmployeeName] [nvarchar](100) NULL,
        [DepartmentName] [nvarchar](50) NULL,
        CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeKey] ASC)
    ) ON [PRIMARY]