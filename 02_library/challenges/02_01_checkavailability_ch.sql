-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT *
from books
WHERE title = 'Dracula';

SELECT *
from books b join loans l
on b.BookID = l.BookID
WHERE b.Title = 'Dracula'
and ReturnedDate is NULL;
