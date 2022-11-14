-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT * FROM dishes ORDER BY price;
-- Create a report showing appetizers and beverages.
SELECT * from dishes WHERE type in ('Appetizer','Beverage');
-- Create a report with all items except beverages.
SELECT * from dishes WHERE type NOT IN ('Beverage');