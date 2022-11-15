-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * from customers 
where FirstName = 'Loretta' and LastName = 'Hundey'
and Address = '6939 Elka Place';
-- id 70, favdish 18

INSERT into orders values (1001,70,'2022-09-20 14:00:00');

select * from dishes where Name in ('House Salad','Mini Cheeseburgers',
'Tropical Blue Smoothie');
-- dishid 4,7,20

INSERT INTO OrdersDishes (OrderID,DishID) VALUES
(1001,(SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
(1001,(SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
(1001,(SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));
select count(*) from OrdersDishes;

select 
sum(
case 
when Name = 'House Salad' then price * 1
when Name = 'Mini Cheeseburgers' then price *1
when Name = 'Tropical Blue Smoothie' then price * 1
end ) as tot_cost
from dishes;

select c.CustomerID,o.OrderID,o.OrderDate,
c.FirstName,c.LastName,c.Email,
d.DishID,d.Name,sum(d.Price)
from Orders o
JOIN Customers c on o.CustomerID = c.CustomerID
join OrdersDishes od on o.OrderID = od.OrderID
join dishes d on d.DishID = od.DishID
WHERE o.OrderID = 1001
;