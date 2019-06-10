CREATE TABLE [dbo].[sales] (
  [stor_id] [char](4) NOT NULL,
  [ord_num] [varchar](20) NOT NULL,
  [ord_date] [datetime] NOT NULL,
  [qty] [smallint] NOT NULL,
  [payterms] [varchar](12) NOT NULL,
  [title_id] [dbo].[tid] NOT NULL,
  CONSTRAINT [UPKCL_sales] PRIMARY KEY CLUSTERED ([stor_id], [ord_num], [title_id])
)
ON [PRIMARY]
GO

CREATE INDEX [titleidind]
  ON [dbo].[sales] ([title_id])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[sales] WITH NOCHECK
  ADD CONSTRAINT [FK__sales__stor_id__59063A47] FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
GO