/*=====================================================
SQL(structured query language)함수
1. 단일행함수 : 행 하나당 하나의 결과를 출력한다
              (문자함수, 숫자함수, 날짜함수, 변환함수, 일반함수)
2. 복수행함수 : 행 여러개당 하나의 결과를 출력한다
               (합계, 평균, 최대, 최소, 갯수)  
====================================================== 
--SELECT문에서는 반드시 테이블명을 명시해야 한다.
--그래서 SELECT절에 식이나 특정함수를 이용해서 결과값을 가져올때
-- 사용할 수 있는 DUAL이라는 테이블을 제공하고 있다. */

SELECT 3+1
FROM dual;

SELECT sysdate
FROM dual;

SELECT substr('korea', 1, 3)
FROM dual;

SELECT initcap('korea hello')
FROM dual;

--대문자
SELECT UPPER('korea')
FROM dual;

SELECT first_name, upper(first_name), last_name, upper(last_name)
FROM employees;

-- 소문자
SELECT lower('KOREA')
FROM dual;

SELECT first_name, lower(first_name), last_name, lower(last_name)
FROM employees;

SELECT first_name, salary
FROM employees
WHERE upper(first_name) LIKE upper('%ja%');

--문자 길이
SELECT length('korea')
FROM dual;

SELECT length('한국')
FROM dual;

--문자의 길이를 바이트로 구해서 리턴해주는 함수
SELECT lengthb('korea')
FROM dual;

SELECT lengthb('한국')
FROM dual;

CREATE TABLE user1(
data varchar2(5)
);

SELECT * FROM user1;

--ORA-12899: value too large for column "HR"."USER1"."DATA" (actual: 11, maximum: 5)
INSERT INTO user1(data)
VALUES('south korea');

--ORA-12899: value too large for column "HR"."USER1"."DATA" (actual: 6, maximum: 5)
INSERT INTO user1(data)
VALUES('한국');