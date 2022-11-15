-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
  person_id VARCHAR(20),
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INTEGER
);
-- Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
('Griffin', 'burger', 5, 1), ('Kimee', 'fries', 1.50, 3), ('ben', 'sushi', 7, 2), ('jeff', 'onion rings', 3.50, 4), ('casey', 'italian sub', 5.50, 1)
-- Select all the records from the orders table.
SELECT * FROM orders
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders
-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id IN('ben')