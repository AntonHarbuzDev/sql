insert into authors (author_name, birth_date)
values
    ('Tom Soiler', '1950-10-20'),
    ('Jone Uik', '1960-02-10'),
    ('Coca Cola', '1970-04-15'),
    ('Adam Seambler', '1980-08-16'),
    ('Lev Tolstoi', '1920-06-14');

insert into books (title, page, author_id)
values
    ('The Adventures of Tom Soiler', 120, 1),
    ('How I got into the Matrix', 550, 2),
    ('Recipe cola', 20, 3),
    ('Recipe fanta', 10, 3),
    ('American Dad', 140, 4),
    ('Adventure Time', 250, 4),
    ('War and peace', 1150, 5);

insert into readers (reader_name, email)
values
    ('Anton', 'anton@gmail.com'),
    ('Jone', 'jone@gmail.com'),
    ('Kolja', 'kolja@gmail.com'),
    ('Masha', 'masha@gmail.com'),
    ('Sol', 'sol@gmail.com');

insert into rentals (date_start, days_rent, book_id, reader_id)
values
    ('2025-12-20', 10, 1, 2),
    ('2025-12-21', 10, 3, 2),
    ('2025-12-22', 20, 3, 5),
    ('2025-12-21', 10, 3, 3),
    ('2025-12-21', 20, 5, 1);