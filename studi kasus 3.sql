-- menggunakan table employees,tampilkan 10 data nama pertama departemen dan gaji pada tahun 2022
SELECT first_name,department,salary_2022
FROM employees
LIMIT 10

-- menggunakan table sales menampilkan nama produk yang tidak tersedia di 9,6 dam 8 harga dibawah 9000
select * from sales
SELECT * FROM sales
WHERE store_city_id NOT IN (6, 8, 9)
  AND price_per_kg < 90000;

-- cari table pegawai dengan inisial VG
SELECT * FROM employees
WHERE first_name LIKE 'N%'
AND last_name LIKE 'N%'

-- cari paling senior dengan inisial C
SELECT * FROM employees
WHERE first_name LIKE 'C%'
ORDER BY hire_date ASC
LIMIT 1

-- cari department dengan catatan gaji terendah 2020
SELECT * FROM employees
ORDER BY salary_2020 ASC
LIMIT 1

--tabel sales tampilkan data penjualan buah (product_name dan quantity pada bulan agustus 2021)
SELECT product_name,quantity
FROM sales
WHERE purchase_date >= '2021-07-31'

SELECT product_name, quantity
FROM sales
WHERE purchase_date BETWEEN '2021-08-01' AND '2021-09-30';

--table tentukan jenis buah yang ada di table sales
SELECT DISTINCT product_name AS nama_buah
FROM sales
ORDER BY product_name ASC

select * FROM sales
--agar dapat menghitung jenis buahnya
SELECT COUNT(DISTINCT product_name) AS jumlah_jenis_buah
FROM sales;

-- agar dapat menghitung berdasarkan kelas jenis buahnya
SELECT product_name AS nama_buah, COUNT(*) AS jumlah
FROM sales
GROUP BY product_name;
