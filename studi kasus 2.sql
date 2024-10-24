-- QUIZ 2
-- menampilkan data sales mengembalikan/menampilkan
--a) data hasil penjualan buah di store 3,4,5 dimana produk buah yang memilik harga per kg diatas 11000

SELECT * FROM sales
WHERE store_city_id IN (3, 4, 5) 
  AND price_per_kg > 11000
  
--b) data hasil penjualan setelah hari raya idul fitri tahun 2022(atau 17 agustus 2022)

SELECT * FROM sales
WHERE purchase_date > '2021-08-18'
  AND quantity > 0;
  
--c) data hasil penjualan buah mangga dan jeruk disemua store kecuali store 1,6,7

SELECT * FROM sales 
WHERE store_city_id NOT IN('1','6','7')
AND product_name IN ('Jeruk','Mangga')

--2 dengan data employees 
--a) tampilkan data karyawan berserta gaji ditahun 2021

SELECT employee_id, first_name, last_name, email, department,salary_2021
FROM employees;


-- tampilkan nama karyawan yang bekerja di store 3.4.7 dan gaji diatas 5000 ditahun 2022
SELECT * FROM employees
WHERE store_city_id IN(3,4,7)
AND salary_2022 > 5000