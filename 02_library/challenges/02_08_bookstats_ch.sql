-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT bookid,Title,published,count(1) cnt
from books
group by published
order by cnt desc;

select bookid,Published,count(1) cnt
FROM(
SELECT bookid,published
from books GROUP by title)
GROUP by Published
order by cnt desc;

-- SELECT DISTINCT Published from books;

SELECT Title,count(1) cnt
from Loans
join books on loans.bookid = books.bookid
GROUP by books.title 
ORDER by cnt DESC
LIMIT 5;