CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	name varchar(255),
	address varchar(255),
	city varchar(255),
	state char(2),
	phone bigint,
	awesome boolean
);

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_price integer
);

--creates orders table
--if multiple products are in one order, they will share an order_number
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
	order_number integer,
	product_id integer REFERENCES products(product_id),
	quantity integer
);

INSERT INTO customers (name, address, city, state, phone, awesome)
VALUES
	('Eric Anderson', '100 Main Street', 'Minneapolis', 'MN', 5555555555, true),
	('Bill Nye', '100 Science Ave', 'Science Town', 'MN', 5555555555, true),
	('Joel Miller', '100 Prime Ave', 'Bloomington', 'MN', 5555555555, true),
	('Mr Donald Trump', '100 Comb Over Ave', 'Trumpville', 'NY', 5555555555, false),
	('Jerry Seinfeld', '100 Somewhere St', 'New York', 'NY', 5555555555, true);

INSERT INTO products (product_price)
VALUES
	(100),(200),(150),(122),(110),(121),(101),(180),(199),(200),(200);

INSERT INTO orders (order_number, product_id, quantity)
VALUES
	(1, 1, 1),
	(1, 2, 2),
	(1, 3, 3),
	(2, 1, 1),
	(3, 1, 1),
	(4, 1, 1),
	(5, 1, 1),
	(6, 1, 1),
	(7, 1, 1),
	(8, 1, 1),
	(9, 1, 1),
	(10, 1, 1);