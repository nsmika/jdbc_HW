SELECT o.product_name
FROM netology.ORDERS o
         JOIN netology.customers c ON o.customer_id = c.id
WHERE LOWER(c.name) = LOWER(:name);