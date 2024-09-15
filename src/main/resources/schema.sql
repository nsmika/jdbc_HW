CREATE SCHEMA netology;

CREATE TABLE netology.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(255) NOT NULL,
    surname      VARCHAR(255),
    age          INT,
    phone_number VARCHAR(20)
);
INSERT INTO netology.CUSTOMERS (name, surname, age, phone_number)
VALUES
    ('Ivan', 'Ivanov', 30, '+79011234567'),
    ('Maria', 'Petrova', 25, '+79019876543'),
    ('Alexey', 'Sidorov', 40, '+79013456789');
CREATE TABLE netology.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  INT,
    product_name VARCHAR(255),
    amount       INT,
    FOREIGN KEY (customer_id) REFERENCES netology.customers (id)
);
INSERT INTO netology.ORDERS (date, customer_id, product_name, amount)
VALUES
    ('2024-09-01', 1, 'Laptop', 1),
    ('2024-09-02', 2, 'Smartphone', 2),
    ('2024-09-03', 3, 'Tablet', 1);