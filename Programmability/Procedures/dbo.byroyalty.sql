﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[byroyalty] @percentage int
AS
select au_id from titleauthor
where titleauthor.royaltyper = @percentage
GO