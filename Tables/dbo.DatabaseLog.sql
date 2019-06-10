CREATE TABLE [dbo].[DatabaseLog] (
  [DatabaseLogID] [int] IDENTITY,
  [PostTime] [datetime] NOT NULL,
  [DatabaseUser] [sysname] NOT NULL,
  [Event] [sysname] NOT NULL,
  [Schema] [sysname] NULL,
  [Object] [sysname] NULL,
  [TSQL] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [XmlEvent] [xml] NOT NULL,
  CONSTRAINT [PK_DatabaseLog_DatabaseLogID] PRIMARY KEY NONCLUSTERED ([DatabaseLogID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO