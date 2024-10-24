--Fungsi Agregat

select * from employees
--MIN mencari nilai minimum
SELECT MIN
(salary_2020) AS salary_minimum 
FROM employees

--MAX mencari nilai maximum
SELECT MAX
(salary_2020) AS salary_maximum
FROM employees

-- AVG mencari nilai rata-rata
SELECT AVG
(salary_2021) AS rata_rata_gaji_2021 
FROM employees

--ROUND untuk membulatkan angka dibelakang koma
SELECT ROUND
(AVG(salary_2021),2) AS rata_rata_gaji_2021
FROM employees

--SUM menjumlahkan 
SELECT SUM
(salary_2020) AS total_gaji 
FROM employees

--COUNT menghitung kondisi
SELECT COUNT
(first_name) AS jumlah_karyawan 
FROM employees

SELECT COUNT
(store_city_id) AS jumlah_karyawan 
FROM employees
WHERE store_city_id =9

--COUNT DISTINCT menghitung jenis

SELECT COUNT (DISTINCT product_name) 
FROM sales

--GROUP BY mengelompokkan baris yang sama ke baris ringkasan

SELECT product_name, 
		store_city_id,
		SUM(quantity) AS total_quantity
FROM sales 
GROUP BY product_name,store_city_id
ORDER BY store_city_id


--total pendapatan price per product name ditanggal 2 febuari 2022 - 30 april 2022
SELECT product_name, 
SUM(quantity+price_per_kg) AS total_pendapatan
FROM sales 
WHERE purchase_date BETWEEN '2022-02-01' AND '2022-04-30'
GROUP  BY product_name 

--HAVING CLAUSE digunakan karena klausa where tidak dapat digunakan dengan fungsi agregat dan intejer 
SELECT product_name ,
store_city_id,
SUM(quantity) AS total_qty
FROM sales 
GROUP BY product_name, Store_city_id
HAVING SUM(quantity)> 5  ----> where tidak bisa karena karena menggunakan agregat,posisi  diakhir dan interger 

--perbedaan dalam konteks strings
SELECT product_name ,
store_city_id,
SUM(quantity) AS total_qty
FROM sales 
WHERE product_name IN ('Jeruk','Mangga')
GROUP BY product_name, Store_city_id

SELECT product_name ,
store_city_id,
SUM(quantity) AS total_qty
FROM sales 
GROUP BY product_name, Store_city_id
HAVING product_name IN ('Jeruk','Mangga')

--substrings
SELECT email,
SUBSTRING(email,1,5) 
FROM employees

select *from employees
select *from sales
