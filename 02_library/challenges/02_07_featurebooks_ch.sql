-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT b.title,count(*) OVER()
from books b
where b.published BETWEEN 1890 and 1899
and b.bookid not IN
(SELECT bookid from loans where returneddate is null);