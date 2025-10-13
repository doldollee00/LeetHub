# Write your MySQL query statement below
select p.product_id,
       IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units), 2), 0) AS average_price
from Prices p LEFT JOIN UnitsSold u 
On p.product_id = u.product_id
AND u.purchase_date >= p.start_date
AND u.purchase_date < DATE_ADD(p.end_date, INTERVAL 1 DAY)
group by p.product_id