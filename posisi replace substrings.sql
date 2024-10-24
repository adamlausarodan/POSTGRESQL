SELECT * FROM employees

-- Replace digunakan untuk mengganti karakter
SELECT department,
		REPLACE(department,'Human Resources','HRD') AS modified_department
FROM employees

SELECT first_name,email, --fungsi koma untuk menyambungkan dengan table baru
		REPLACE(department,'Human Resources','HRD') AS modified_department
		FROM employees

-- POSITION mengetahui ada diurutan keberapa
SELECT email,POSITION('@'IN email)
FROM employees

--cara ambil domain email
--position SUBSTRING
--SUBSTRING untuk mengambil data setelahnya 

SELECT email,
	SUBSTRING(email, POSITION('@' IN email)) 
FROM employees

SELECT email,
	SUBSTRING(email, POSITION('@' IN email)) AS domain_email1,
	SUBSTRING(email, POSITION('@' IN email)+1) AS domain_email2
FROM employees

--SUBSTRING 
SELECT SUBSTRING ('This is test data' FROM 5)
FROM employees

--LEFT mengambil data sebelah kirinya
SELECT email,
    LEFT(email, POSITION('@' IN email)) AS domain_email1,
    LEFT(email, POSITION('@' IN email) + 1) AS domain_email2
FROM employees;

--RIGHT mengambil data yang kanan
SELECT email,
RIGHT(email, POSITION('@' IN email)-1)
FROM employees

SELECT email,
    SUBSTRING(email, POSITION('@' IN email)) AS domain_email1, 
    SUBSTRING(email, POSITION('@' IN email) + 1) AS domain_email2,
    LEFT(email, POSITION('@' IN email) - 1)
FROM employees;

--COALESCE
--mengubah nilai null yang ada disebuah kolom

SELECT email,
	COALESCE(email,'NONE') AS bebas
FROM employees

SELECT email,
	COALESCE(email,'1')
FROM employees


--LOWER mengubah huruf besar ke kecil
SELECT LOWER (first_name) 
FROM employees

SELECT first_name,
	LOWER (first_name) AS lower_case
FROM employees

--UPPERCASE mengubah huruf kecil ke besar
SELECT first_name,
 	UPPER (first_name) AS upper_case,email
FROM employees

--LENGHT menghitung banyak kata menghitung
SELECT first_name,
	LENGTH(first_name) 
	FROM employees