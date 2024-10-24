--UPDATE memperbarui data
select *from employees
WHERE employee_id = 1
.
--single update
UPDATE employees
SET salary_2020 = 8000
WHERE employee_id = 1

--multiple

UPDATE employees
SET salary_2020 = CASE WHEN employee_id = 2 THEN 3000
						WHEN employee_id = 3 THEN 2000
					END 
WHERE employee_id IN (2,3)

--USING CASE CLAUSE suatu kondisi benar akan berhenti dan jika tidak benar akan else
SELECT employee_id,
		store_city_id,
		CASE WHEN store_city_id < 5  THEN 'JAWA'
				WHEN store_city_id < 8 THEN  'LUAR JAWA'
				 	ELSE 'LUAR NEGERI'
			END AS region,
			first_name
FROM employees

--SUBQUERY WEHRE query dalam query 

SELECT * FROM region

SELECT * FROM employees
WHERE store_city_id IN (SELECT store_city_id FROM sales
                        WHERE store_city_id IN (5,6));

--SUBQUERY FROM

SELECT * FROM (SELECT * FROM sales
				WHERE product_name IN('Apel','Mangga','Jeruk')) AS tablefrom

--EXTRACT
SELECT first_name,
		hire_date,
		EXTRACT(YEAR FROM hire_date) AS hire_date,
		EXTRACT(MONTH FROM hire_date) AS hire_month,
		EXTRACT(DAY FROM hire_date) AS hire_day
		FROM employees

--DATEPART
SELECT first_name, last_name, hire_date
CURRENT_DATE,
DATE_PART('year', CURRENT_DATE)- DATE_PART('year',hire_date) AS different_year
FROM employees

--INNER JOIN 

select *from employees
select *from sales