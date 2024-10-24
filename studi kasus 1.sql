--1)buat lah table database
--2)masukan datanya product id dan dan nama product
--3) tambahkan column dan quantitas

CREATE TABLE product_sales (
    product_id int,
    product_name varchar(255),
    primary key(product_id)
);

INSERT INTO product_sales (product_id, product_name) 
VALUES (1, 'Mangga'),
		(2, 'Jeruk'),
		(3, 'Apel');


alter table product_sales
add column qty int;


SELECT * FROM product_sales