CREATE TABLE [dbo].[publishers] (
  [pub_id] [char](4) NOT NULL,
  [pub_name] [varchar](40) NULL,
  [city] [varchar](20) NULL,
  [state] [char](2) NULL,
  [country] [varchar](30) NULL DEFAULT ('USA'),
  CONSTRAINT [UPKCL_pubind] PRIMARY KEY CLUSTERED ([pub_id]),
  CHECK ([pub_id]='1753' OR [pub_id]='1756' OR [pub_id]='1622' OR [pub_id]='0877' OR [pub_id]='0736' OR [pub_id]='1389' OR [pub_id] like '99[0-9][0-9]')
)
ON [PRIMARY]
GO