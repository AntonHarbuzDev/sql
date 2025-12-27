create schema if not exists library;

create table if not exists authors (
    id serial primary key,
    author_name varchar(100) unique,
    birth_date date
);

create table if not exists books (
    id serial primary key,
    title varchar(100) not null,
    page int not null check (page > 0),
    author_id int not null references authors(id)
);

create table if not exists readers (
    id serial primary key,
    reader_name varchar(100) not null,
    email varchar(100) unique
);

create table if not exists rentals (
    id serial primary key,
    date_start date default now(),
    days_rent int not null,
    date_return date check (date_start < date_return),
    book_id int not null references books(id),
    reader_id int not null references readers(id)
);


create table if not exists reader_rentals(
    reader_id int not null references readers(id),
    rental_id int not null references rentals(id),
    primary key (reader_id, rental_id)
);

drop table authors, readers, books, rentals cascade;
drop table if exists reader_rentals cascade;