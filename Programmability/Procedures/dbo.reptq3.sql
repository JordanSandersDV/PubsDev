SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[reptq3] @lolimit money, @hilimit money,
@type char(12)
AS
select 
	case when grouping(pub_id) = 1 then 'ALL' else pub_id end as pub_id, 
AVG(price) AS avg_price
from titles
where price IS NOT NULL
group by pub_id with ROLLUP
order by pub_id;
SELECT * from jobs j;

GO