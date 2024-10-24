-- Create table
CREATE TABLE vendor_1 (
    vendor_id INTEGER PRIMARY KEY,
    vendor_name VARCHAR(255),
    vendor_type VARCHAR(255),
    region VARCHAR(255),
    cooperation_date DATE
);

-- Insert data
INSERT INTO vendor_1 (vendor_id, vendor_name, vendor_type, region, cooperation_date) VALUES
(1, 'HQ', 'Packaging', '1', '2021-01-01'),
(2, 'STP', 'Packaging', '1', '2021-05-08'),
(3, 'PackaNew', 'Packaging', '1', '2022-01-01');
select * from vendor_1

CREATE TABLE vendor_2 (
    vendor_id INTEGER PRIMARY KEY,
    vendor_name VARCHAR(255),
    vendor_type VARCHAR(255),
    region VARCHAR(255),
    cooperation_date DATE
);

-- Create table
CREATE TABLE region (
    store_city_id INTEGER PRIMARY KEY,
    region VARCHAR(255)
);

-- Insert data
INSERT INTO region(store_city_id, region) VALUES
(1, 'Sumatera'),
(2, 'Yogyakarta'),
(3, 'Jawa Timur'),
(4, 'Sulawesi'),
(5, 'Bali'),
(6, 'Jawa Barat'),
(7, 'Kalimantan'),
(8, 'Jawa Tengah'),
(9, 'Bandung')
(10, 'Jakarta');

-- Insert data
INSERT INTO vendor_2 (vendor_id, vendor_name, vendor_type, region, cooperation_date) VALUES
(3, 'PackaNew', 'Ekspedisi', '1', '2021-03-01'),
(4, 'Herlin', 'Ekspedisi', '2', '2021-03-01'),
(5, 'Mota', 'Ekspedisi', '5', '2022-05-01');
select * from vendor_2

--inner join
--digunakan untuk menggabungkan baris dari dua atau lebih tabel berdasarkan kondisi yang sesuai
-- hanya menampilkan vendor_id yang sama
SELECT vendor_1.vendor_id,
		vendor_2.vendor_name,
		 vendor_1.vendor_type
		 FROM vendor_1 
		 INNER JOIN vendor_2 
		 ON vendor_1.vendor_id = vendor_2.vendor_id


		 SELECT v1.vendor_id,
		v2.vendor_name,
		 v1.vendor_type
		 FROM vendor_1 AS v1
		 INNER JOIN vendor_2 AS v2
		 ON v1.vendor_id = v2.vendor_id

--LEFT JOIN
--menampilkan semua baris dari tabel kiri, dengan baris dari tabel kanan hanya jika cocok.
--Prefiks adalah istilah yang digunakan untuk menggambarkan awalan dari sebuah kata, angka, atau string. 
--Dalam konteks yang lebih umum, prefiks berarti tambahan atau bagian yang ditambahkan di awal sesuatu untuk mengubah makna atau fungsinya.
SELECT * FROM region

select s.*, rg.region 	    --prefict
FROM sales AS s
LEFT JOIN region AS rg
ON s.store_city_id = rg.store_city_id

-- RIGHT JOIN
--menampilkan semua baris dari tabel kanan, dengan baris dari tabel kiri hanya jika cocok.
SELECT * FROM region AS rg
RIGHT JOIN sales AS s
On rg.store_city_id = s.store_city_id

SELECT rg.region, s.product_name, s.quantity FROM region AS rg --mengambil tabel yang dibutuhkan
RIGHT JOIN sales AS s
On rg.store_city_id = s.store_city_id

--union 
--menggabungkan kumpulan hasil dari 2 kolom yang sama
--union & union all
--union jika ada duplikat akan mengambil salah satunya
--union all duplikat keambil juga

select * from vendor_1
select * from vendor_2
--union
SELECT * FROM vendor_1
UNION
select * from vendor_2

SELECT vendor_id, vendor_name FROM vendor_1
UNION
SELECT vendor_id, vendor_type FROM vendor_2

--union all
SELECT vendor_id, vendor_name FROM vendor_1
UNION ALL
SELECT vendor_id, vendor_type FROM vendor_2


--WITH
WITH table_a AS (
    SELECT 
        product_name,
        store_city_id,
        SUM(quantity + price_per_kg) AS total
    FROM sales
    GROUP BY product_name, store_city_id
),
avg_amount_per_region AS (SELECT store_city_id,
        AVG(total) AS avg_total
    		FROM table_a
   			 GROUP BY store_city_id)

SELECT * FROM  avg_amount_per_region
WHERE store_city_id IN (1,2,3)





