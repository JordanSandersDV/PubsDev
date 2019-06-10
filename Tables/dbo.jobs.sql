CREATE TABLE [dbo].[jobs] (
  [job_id] [smallint] IDENTITY,
  [job_desc] [varchar](50) NOT NULL DEFAULT ('New Position - title not formalized yet'),
  [min_lvl] [tinyint] NOT NULL,
  [max_lvl] [smallint] NOT NULL,
  PRIMARY KEY CLUSTERED ([job_id]),
  CHECK ([max_lvl]<=(3000)),
  CHECK ([min_lvl]>=(10))
)
ON [PRIMARY]
GO