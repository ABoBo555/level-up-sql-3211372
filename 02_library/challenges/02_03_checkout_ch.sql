-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT * FROM
loans l join books b
on l.bookid = b.bookid
join patrons p on p.patronid = l.patronid
where 
b.barcode in ('2855934983','4043822646')
and p.email = 'jvaan@wisdompets.com';


SELECT * from books where books.Barcode in ('2855934983','4043822646');

SELECT *
from loans 
join books on loans.bookid = books.bookid
where books.Barcode in ('2855934983','4043822646')
and loans.LoanDate = '2022-08-25' and loans.DueDate = '2022-09-08';

