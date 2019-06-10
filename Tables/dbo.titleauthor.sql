CREATE TABLE [dbo].[titleauthor] (
  [au_id] [dbo].[id] NOT NULL,
  [title_id] [dbo].[tid] NOT NULL,
  [au_ord] [smallint] NULL,
  [royaltyper] [int] NULL,
  CONSTRAINT [UPKCL_taind] PRIMARY KEY CLUSTERED ([au_id], [title_id])
)
ON [PRIMARY]
GO

CREATE INDEX [auidind]
  ON [dbo].[titleauthor] ([au_id])
  ON [PRIMARY]
GO

CREATE INDEX [titleidind]
  ON [dbo].[titleauthor] ([title_id])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[titleauthor] WITH NOCHECK
  ADD CONSTRAINT [FK__titleauth__au_id__534D60F1] FOREIGN KEY ([au_id]) REFERENCES [dbo].[authors] ([au_id])
GO