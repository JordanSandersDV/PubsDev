CREATE TABLE [dbo].[titles_Development] (
  [title_id] [dbo].[tid] NOT NULL,
  [title] [varchar](80) NOT NULL,
  [type] [char](12) NOT NULL DEFAULT ('UNDECIDED'),
  [pub_id] [char](4) NULL,
  [price] [money] NULL,
  [advance] [money] NULL,
  [royalty] [int] NULL,
  [ytd_sales] [int] NULL,
  [notes] [varchar](200) NULL,
  [pubdate] [datetime] NOT NULL DEFAULT (getdate()),
  CONSTRAINT [UPKCL_titleidind] PRIMARY KEY CLUSTERED ([title_id])
)
ON [PRIMARY]
GO

CREATE INDEX [titleind]
  ON [dbo].[titles_Development] ([title])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[titles_Development] WITH NOCHECK
  ADD CONSTRAINT [FK__titles__pub_id__4D94879B] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO