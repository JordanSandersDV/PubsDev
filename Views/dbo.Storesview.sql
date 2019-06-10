SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Storesview] 
AS SELECT s.stor_id
      ,s.stor_name
      ,s.stor_address
      ,s.city
      ,s.state
      ,s.zip FROM stores s
GO