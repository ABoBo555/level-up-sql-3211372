-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT c.FirstName,c.LastName,r.*
FROM reservations r
JOIN customers c
on  r.customerid = c.customerid
where c.LastName IN ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
and r.PartySize = 4 
and date(r.Date) = '2022-06-14';

