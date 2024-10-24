quiz4

--1. Lakukan query yang menampilkan records total gaji karyawan di tahun 2020 per
--strore_city_id,store manakah yang mengeluarkan cost paling banyak?

SELECT store_city_id,
SUM(salary_2020) AS total_salary_2020
FROM employees
GROUP BY store_city_id
ORDER BY total_salary_2020 DESC
LIMIT 1

--2 lakukan query yang menampilkan record gaji karyawan ditahun 2020 yang domainnya yahoo.com

SELECT SUM(salary_2020) AS total_salary_2020_yahoo FROM employees
WHERE email LIKE '%yahoo%'

select * from employees