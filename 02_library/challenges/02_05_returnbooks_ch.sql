-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424


UPDATE loans
set returneddate = '2022-07-05'
where bookid in 
(SELECT books.bookid 
from books where books.barcode in ('6435968624','5677520613',
'8730298424') 
and loans.returneddate is NULL);

SELECT * from loans 
where loans.bookid in (105,46,73)
and loans.ReturnedDate = '2022-07-05';