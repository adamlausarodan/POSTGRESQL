CREATE TABLE sales (
    user_id int,
    product_name varchar(255),
    quantity int,
    purchase_date date,
    store_city_id int,
    price_per_kg int,
    primary key(user_id)
);

INSERT INTO sales (user_id, product_name, quantity, purchase_date, store_city_id, price_per_kg) 
VALUES
(1, 'Mangga', 13, '2021-07-21', 10, 10000),
(2, 'Jeruk', 17, '2022-01-22', 4, 9000),
(3, 'Jeruk', 18, '2022-04-29', 4, 9000),
(4, 'Anggur', 3, '2022-03-30', 9, 13000),
(5, 'Pisang', 13, '2022-04-07', 3, 8000),
(6, 'Melon', 11, '2022-02-04', 4, 11000),
(7, 'Apel', 6, '2021-11-08', 5, 11500),
(8, 'Apel', 6, '2020-09-30', 5, 15000),
(9, 'Semangka', 12, '2020-10-23', 4, 12000),
(10, 'Nanas', 5, '2020-07-22', 8, 11000),
(11, 'Markisa', 15, '2021-03-31', 3, 11000),
(12, 'Pepaya', 19, '2021-06-07', 5, 8000);

SELECT * FROM sales
-- * GUNAKAN UNTUK MENAMPILKAN KESELURUHAN

-- tanpa * lalu sesuaikan nama  tablenya 

SELECT user_id, product_name
FROM sales

--FILTERING 
--WHERE
SELECT * FROM sales
WHERE price_per_kg < 10000

--menampilkan product dan tanggal dari harga ynag lebih sama dengan 
SELECT product_name, purchase_date FROM sales
WHERE price_per_kg >= 10000
ORDER BY purchase_date DESC

--order by mengurutkan dari terkecil
--ORDER BY purchase_date ASC  (TERKECIL)
--ORDER BY purchase_date DESC (TERBESAR)

--SELECT DISTINCT MENGAMBIL NILAI UNIK
SELECT(product_name) FROM sales
WHERE price_per_kg >= 10000

--AND mengikat dan harus
SELECT * FROM sales 
WHERE price_per_kg > 10000
AND store_city_id < 10


SELECT * FROM sales 
WHERE price_per_kg > 10000
AND store_city_id < 10
AND product_name = 'Melon'

--OR optional
SELECT * FROM sales 
WHERE price_per_kg > 15000  
OR store_city_id < 5

SELECT * FROM sales 
WHERE price_per_kg > 10000  
AND store_city_id < 6
AND purchase_date < '2021-05-01'

--OR AND
SELECT * FROM sales
WHERE (product_name = 'Jeruk'
OR product_name='Mangga') AND store_city_id = 4

--NOT dihindari kecualikan
SELECT * FROM sales
WHERE NOT product_name = 'Mangga'

--versi notasi
SELECT * FROM sales
WHERE product_name <> 'Mangga'

SELECT * FROM sales
WHERE store_city_id != 5

--in
SELECT * FROM sales
WHERE product_name  = 'Jeruk'
OR product_name = 'Mangga'
OR product_name = 'Apel'
OR product_name = 'Pepaya'

--mempersingkat or yang banyak
SELECT * FROM sales
WHERE product_name IN ('Jeruk','Apel','Mangga','Apel','Pepaya')


-- not in mengecualikan
SELECT * FROM sales 
WHERE NOT product_name NOT IN ('Jeruk','Apel','Mangga','Apel','Pepaya')

--not in & in
SELECT * FROM sales 
WHERE product_name NOT IN('Jeruk','Apel','Mangga')
AND store_city_id IN (5,6,7)

--is null,is not null
SELECT * FROM sales
WHERE product_name ISNULL

