select * from rentals
where reader_id = 2;

select rdr.reader_name, ren.date_start, b.title from readers rdr
join rentals ren on ren.reader_id = rdr.id
join books b on ren.book_id = b.id
where ren.date_return is null;

select b.title, a.author_name from books as b
join authors a on b.author_id = a.id;

update rentals
set date_return = '2025-12-23'
where reader_id = 2;

select a.author_name, count(b.id) as book_count
from authors a
join books b on a.id = b.author_id
group by a.author_name;

select rdr.reader_name, count(ren.reader_id) as count_reantls from readers rdr
left join rentals ren on ren.reader_id = rdr.id
group by rdr.reader_name
order by count_reantls desc ;
