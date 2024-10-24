CREATE TABLE employees (
    employee_id int,
    store_city_id int,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    department varchar(255),
    hire_date date,
    salary_2020 int,
    salary_2021 int,
    salary_2022 int,
    primary key(employee_id)
);

INSERT INTO employees (employee_id, store_city_id, first_name, last_name, email, department, hire_date, salary_2020, salary_2021, salary_2022) 
VALUES
(1, 5, 'Villa', 'Gradys', 'villa-gradys10@yahoo.de', 'Web Developer', '2018-10-27', 9344, 9400, 2775),
(2, 7, 'Daphne', 'Fuller', 'fuller7591@yahoo.co.uk', 'Human Resources', '2020-01-09', 3532, 7606, 10547),
(3, 6, 'Henry', 'Kamal', 'henrykamal@hotmail.com', 'Quality Assurance', '2019-06-22', 2433, 7606, 11552),
(4, 6, 'Channing', 'Robert', 'roberthanning80@hotmail.co.uk', 'Asset Management', '2019-11-17', 772, 4146, 2558),
(5, 8, 'Creek', 'Ocean', 'creek.ocean@outlook.com', 'Customer Service', '2018-10-19', 5145, 11952, 9702),
(6, 9, 'Garus', 'Gary', null, 'Quality Assurance', '2017-08-02', 6369, 5761, 7583),
(7, 8, 'Giocomo', 'Vittor', 'giacomo376@yahoo.co.jp', 'Payroll', '2018-06-05', 5324, 4831, 8109),
(8, 7, 'Christopher', 'Scott', 'christopher.scott12@google.ca', 'Data Scientist', '2017-02-08', 8045, 6694, 1643),
(9, 6, 'Orlando', 'Maeshay', 'orlando-maeshay@google.ca', 'Data Analyst', '2019-03-05', 6296, 7614, 12372),
(10, 9, 'Calvin', 'Sandra', 'sandra@google.ca', 'Asset Management', '2018-04-14', 8365, 11077, 5733);

INSERT INTO employees (employee_id, store_city_id, first_name, last_name, email, department, hire_date, salary_2020, salary_2021, salary_2022) 
VALUES
(11, 5, 'Inez', 'Haashya', 'taashyainez357@yahoo.org', 'Quality Assurance', '2018-09-12', 7764, 5380, 3929),
(12, 6, 'Ima', 'Heather', 'ima4770@hotmail.com', 'Accounting', '2019-03-07', 5323, 3414, 4189),
(13, 8, 'Deborah', 'Bol', 'deborah.bol@example.com', 'Sales and Marketing', '2018-05-10', 2146, 3186, 4087),
(14, 9, 'Bruno', 'Honorato', 'bruno.leonardo@icloud.it', 'Asset Management', '2018-08-07', 7754, 4224, 5225),
(15, 10, 'Aaron', 'Finn', 'aaronfinn@icloud.ca', 'Payroll', '2018-04-11', 8411, 3497, 5711),
(16, 10, 'Neil', 'Norman', 'norman.neil@gmail.com', 'Media Relations', '2019-01-27', 2411, 8556, 5627),
(17, 7, 'Cameron', 'Jameson', 'jameson-cameron202@gmail.com', 'Data Analyst', '2021-06-07', 5666, 7567, 8796),
(18, 9, 'Cameron', 'Douglas', 'jameson-cameron02@google.co.uk', 'Tech Support', '2020-02-06', 9246, 4524, 12083),
(19, 10, 'Jameson', 'Eleanor', 'eleanor.jameson@google.co.uk', 'Payroll', '2018-02-24', 3315, 1762, 9641),
(20, 3, 'Harper', 'Lydia', 'lydia@protonmail.co.uk', 'Advertising', '2018-04-16', 8834, 1384, 1936);



-- mencari data kosong dengan ISNULL
SELECT * FROM employees
WHERE email ISNULL

-- not null
SELECT * FROM employees
WHERE email IS NOT NULL
--data lengkap akan muncul dan data yang tidak lengkap tidak akan tampil

-- between mencari nilai yang diantara x
-- 2018-01-01 <= ___X____ <=2020-12-31
SELECT * FROM employees
WHERE hire_date BETWEEN '2018-01-01' and '2020-12-31'

-- menampilkan nama dari data between
SELECT first_name FROM employees
WHERE hire_date BETWEEN '2018-01-01' and '2020-12-31'

SELECT * FROM employees
WHERE salary_2020 BETWEEN 5000 and 9000

-- sama dengan between logikanya
SELECT * FROM employees
WHERE salary_2020 >= 5000 and salary_2020 <= 9000
--rentang harus memiliki nilai angka tidak bisa pada nama

-- DELETE menghapus single record
DELETE FROM employees 
WHERE  salary_2022 = 5711

-- menghapus data null
DELETE FROM employees 
WHERE  email IS null

--menghapus keseluruhan data dan table 
DELETE FROM employees 

-- LIKE
-- mencari pola yang berawalan kata/huruf 

SELECT * FROM employees 
WHERE first_name LIKE 'Da%'

-- mencari pola yang berakhiran kata/huruf 
SELECT * FROM employees 
WHERE first_name LIKE '%er'

--mencari pola yang mengandung kata tersebut 
SELECT * FROM employees 
WHERE first_name LIKE '%er%'

-- 2 karakter awal dan akhir
SELECT * FROM employees
WHERE first_name LIKE '%al%'
OR last_name LIKE '%di%'

-- mencari kata selanjutnya setiap "_" menghitung setiap huruf
SELECT * FROM employees
WHERE first_name LIKE 'H____'

-- ORDER BY 
SELECT * FROM employees
ORDER BY department, first_name

-- ORDER BY ASC dari terkecil ke terbesar
SELECT * FROM employees
ORDER BY first_name ASC, department DESC 

SELECT * FROM employees
ORDER BY department DESC , first_name DESC

-- mengubah type data dalam table
ALTER TABLE employees -- ORDER BY DESC dari terbesar ke terkecil
ALTER COLUMN hire_date type date

-- LIMIT menampilkan batas awal  yang akan ditampilkan
SELECT * FROM employees
LIMIT 6

-- OFFSET skip data awal menpilkan data akhir
SELECT * FROM employees
OFFSET 6

--menampilkan batas data terakhir limit & order by
SELECT * FROM employees
order by employee_id DESC
LIMIT 6

--SELECT data 1-100, skip 1-5 dan ambil data 6- 10 
SELECT * FROM employees
OFFSET 6
LIMIT 6

-- BETWEEN LIMIT 
SELECT * FROM employees
WHERE hire_date BETWEEN '2018-01-01' and '2020-12-31'
LIMIT 5

-- DISTINCT mengembalikan nilai yang berbeda  
SELECT DISTINCT(first_name)
FROM employees

-- PREFIX menambah nama table didepan nama kolom 
--agar jika ada 2 table yg memiliki nama yang sama tidak ambigu
--TABLE A
SELECT first_name,
       employees.email
FROM employees
LEFT JOIN TABLE_B
ON employees.id = TABLE_B.id
--TABLE B juga memiliki tabel email

-- Alias mempersingkat menambah nama kolom
SELECT *, salary_2020+salary_2021 AS total_salary
FROM employees

--ganti nama kolom pake alias 
SELECT first_name AS nama_awal
FROM employees

