CREATE TABLE [dbo].[authors] (
  [au_id] [dbo].[id] NOT NULL,
  [au_lname] [varchar](40) NOT NULL,
  [au_fname] [varchar](20) NOT NULL,
  [phone] [char](12) NOT NULL DEFAULT ('UNKNOWN'),
  [address] [varchar](40) NULL,
  [city] [varchar](20) NULL,
  [state] [char](2) NULL,
  [zip] [char](5) NULL,
  [contract] [bit] NOT NULL,
  CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED ([au_id]),
  CHECK ([zip] like '[0-9][0-9][0-9][0-9][0-9]')
)
ON [PRIMARY]
GO

CREATE INDEX [aunmind]
  ON [dbo].[authors] ([au_lname], [au_fname])
  ON [PRIMARY]
GO