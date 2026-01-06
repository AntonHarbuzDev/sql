insert into customers (customers_name, email)
select
    (array['Иван', 'Алексей', 'Дмитрий', 'Сергей', 'Андрей', 'Мария', 'Анна', 'Елена', 'Ольга', 'Наталья',
           'John', 'Michael', 'David', 'Robert', 'James', 'Emma', 'Olivia', 'Ava', 'Isabella', 'Sophia'])
           [floor(random() * 20 + 1)] as customer_name,
           generate_series || '@gmail.com' as email
from generate_series(1, 1000);

insert into products (products_name, price)
select
    (array['iPhone', 'Galaxy', 'Pixel', 'OnePlus', 'MacBook', 'Surface', 'ThinkPad',
           'iPad', 'Kindle', 'Echo', 'Nest', 'PlayStation', 'Xbox', 'Switch',
           'AirPods', 'Bose', 'Sony', 'Canon', 'Nikon', 'GoPro', 'DJI'])
           [floor(random() * 21 + 1)] as products_name,
    round((random() * 100)::numeric, 2) as price
from generate_series(1, 100);

insert into ordes (amount, status, date_created, customer_id, product_id)
select
    floor(random() * 10 + 1) as amount,
    (array['pending', 'completed', 'shipped', 'cancelled'])[floor(random() * 4 + 1)] as status,
    '2020-01-01'::timestamp + (random() * 2192 * INTERVAL '1 day') as date_created,
    floor(random() * 1000 + 1) as customer_id,
    floor(random() * 100 + 1) as product_id
from generate_series(1, 30000000);