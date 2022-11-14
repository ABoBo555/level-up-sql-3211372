-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.



select c.FirstName,c.LastName,o.customerid ,count(o.OrderID) as times
from orders o
join customers c on
o.customerid = c.customerid
group by c.customerid
order by count(o.OrderID) desc;