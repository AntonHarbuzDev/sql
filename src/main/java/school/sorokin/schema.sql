create schema if not exists marketplace;

create table if not exists customers (
    id serial primary key,
    customers_name varchar(100),
    email varchar(255)
);

create table if not exists products (
    id serial primary key,
    products_name varchar(255),
    price numeric(10,2)
);

create table if not exists ordes (
    id serial primary key,
    amount numeric(10,2),
    status text,
    date_created timestamp not null,
    customer_id int references customers(id),
    product_id int references products(id)
);

create index idx_ordes_date_created on ordes (date_created);

create table orders_new (
    id bigint not null,
    amount numeric(10,2),
    status text,
    date_created timestamp not null,
    customer_id int,
    product_id int,
    primary key (id, date_created)
) partition by range (date_created);

create table orders_2020 partition of orders_new for values from ('2020-01-01') to ('2021-01-01');

drop table orders_new cascade;
drop table customers, products, ordes cascade;
