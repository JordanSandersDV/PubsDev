CREATE TABLE [HumanResources].[Employee] (
  [BusinessEntityID] [int] NOT NULL,
  [NationalIDNumber] [nvarchar](15) NOT NULL,
  [LoginID] [nvarchar](256) NOT NULL,
  [OrganizationNode] [hierarchyid] NULL,
  [OrganizationLevel] AS ([OrganizationNode].[GetLevel]()),
  [JobTitle] [nvarchar](50) NOT NULL,
  [BirthDate] [date] NOT NULL,
  [MaritalStatus] [nchar](1) NOT NULL,
  [Gender] [nchar](1) NOT NULL,
  [HireDate] [date] NOT NULL,
  [SalariedFlag] [dbo].[Flag] NOT NULL,
  [VacationHours] [smallint] NOT NULL,
  [SickLeaveHours] [smallint] NOT NULL,
  [CurrentFlag] [dbo].[Flag] NOT NULL,
  [rowguid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Employee_rowguid] DEFAULT (newid()) ROWGUIDCOL,
  [ModifiedDate] [datetime] NOT NULL,
  CONSTRAINT [PK_Employee_BusinessEntityID] PRIMARY KEY CLUSTERED ([BusinessEntityID])
)
ON [PRIMARY]
GO