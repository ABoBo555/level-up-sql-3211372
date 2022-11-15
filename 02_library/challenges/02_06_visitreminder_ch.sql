-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select patrons.patronid,FirstName,Email,count(1) cnt
from loans
join patrons on loans.PatronID = patrons.PatronID
GROUP BY loans.patronid
order by cnt asc
limit 1;