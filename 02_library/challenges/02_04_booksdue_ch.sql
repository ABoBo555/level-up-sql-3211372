-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT patrons.patronid,patrons.FirstName,patrons.Email,
books.Title,loans.duedate,Loans.ReturnedDate
from loans JOIN books
on loans.bookid = books.bookid
join patrons on patrons.patronid = loans.patronid
where loans.duedate = '2022-07-13';

