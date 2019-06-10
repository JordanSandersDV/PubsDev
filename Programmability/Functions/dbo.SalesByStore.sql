SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[SalesByStore] (@storeid INT)
RETURNS TABLE
AS
  RETURN (SELECT
      s.stor_id
     ,s.ord_num
     ,s.ord_date
     ,s.payterms
     ,s.title_id
    FROM sales s);
GO