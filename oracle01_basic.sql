select first_name from employees;

SELECT * FROM tab;

SELECT salary, salary*10 AS "보너 스"
FROM employees;

DESC employees;

SELECT last_name || '님의 급여는' || salary || '입니다.' AS name
FROM employees;

-- DISTINCT는 중복제거를 한 후 출력해주는 명령어이다.
SELECT DISTINCT first_name
FROM employees;

--- 입력순서
--SELECT column_name1, column_name2
--FROM table_name
--WHERE column_name='value'
--GROUP By column_name
--HAVING column_name='value'
--ORDER BY column_name ASC(DESC);
--
--
--- SELECT 해석순서 
--FROM table_name
--WHERE column_name='value'
--GROUP By column_name
--HAVING column_name='value'
--SELECT column_name1, column_name2
--ORDER BY column_name ASC(DESC);

-- employees테이블에서 salary이 3000미만일때의
-- first_name, salary을 출력하라.

SELECT first_name salary
FROM employees
WHERE salary < 3000;

SELECT first_name, salary
FROM employees
WHERE first_name = 'David';

SELECT first_name, salary
FROM employees
WHERE first_name <> 'David'; -- <> != 둘이 같은 의미

SELECT first_name, hire_date, salary
FROM employees
--WHERE salary = 3000 OR salary = 9000 OR salary = 17000;
WHERE salary IN(3000,9000,17000);

