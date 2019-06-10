CREATE TABLE [dbo].[pub_info] (
  [pub_id] [char](4) NOT NULL,
  [logo] [image] NULL,
  [pr_info] [text] NULL,
  CONSTRAINT [UPKCL_pubinfo] PRIMARY KEY CLUSTERED ([pub_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[pub_info] WITH NOCHECK
  ADD CONSTRAINT [FK__pub_info__pub_id__3F466844] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO