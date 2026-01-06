select * from ordes where date_created >= '2025-01-01' and date_created <'2025-02-01';

select o.id, c.customers_name, p.products_name, o.amount
from ordes o
join customers c on o.customer_id = c.id
join products p on o.product_id = p.id
where o.date_created between '2025-01-01' and '2025-12-31';

