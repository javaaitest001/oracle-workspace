select first_name from employees;

SELECT * FROM tab;

SELECT salary, salary*10 AS "���� ��"
FROM employees;

DESC employees;

SELECT last_name || '���� �޿���' || salary || '�Դϴ�.' AS name
FROM employees;

-- DISTINCT�� �ߺ����Ÿ� �� �� ������ִ� ��ɾ��̴�.
SELECT DISTINCT first_name
FROM employees;

--- �Է¼���
--SELECT column_name1, column_name2
--FROM table_name
--WHERE column_name='value'
--GROUP By column_name
--HAVING column_name='value'
--ORDER BY column_name ASC(DESC);
--
--
--- SELECT �ؼ����� 
--FROM table_name
--WHERE column_name='value'
--GROUP By column_name
--HAVING column_name='value'
--SELECT column_name1, column_name2
--ORDER BY column_name ASC(DESC);

-- employees���̺��� salary�� 3000�̸��϶���
-- first_name, salary�� ����϶�.

SELECT first_name salary
FROM employees
WHERE salary < 3000;

SELECT first_name, salary
FROM employees
WHERE first_name = 'David';

SELECT first_name, salary
FROM employees
WHERE first_name <> 'David'; -- <> != ���� ���� �ǹ�

SELECT first_name, hire_date, salary
FROM employees
--WHERE salary = 3000 OR salary = 9000 OR salary = 17000;
WHERE salary IN(3000,9000,17000);

