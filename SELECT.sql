use adam;
SELECT * FROM tCity;

SELECT * FROM tStaff;

SELECT name, popu 
FROM tCity;

SELECT region, name, area 
FROM tCity;

SELECT name, depart, grade 
FROM tStaff;

SELECT name AS 도시명, area AS "면적(제곱Km)", popu AS "인구(만명)" 
FROM tCity;

SELECT 도시명 = name, area '면적(제곱Km)', popu [인구(만명)] 
FROM tCity;

SELECT name, popu * 10000 AS "인구(명)" 
FROM tCity;

SELECT name, area, popu, popu * 10000 / area AS "인구밀도" 
FROM tCity;

SELECT 60 * 60 * 24;

SELECT 60 * 60 * 24 * 365;

SELECT CONCAT(ENAME,' ', JOB) AS "EMPLOYEES"
FROM EMP;

SELECT region 
FROM tCity;

SELECT DISTINCT region 
FROM tCity;

SELECT DISTINCT region 
FROM tCity 
ORDER BY region;

SELECT DISTINCT region, name 
FROM tCity 
ORDER BY region;

SELECT * 
FROM tCity 
ORDER BY popu;

SELECT * 
FROM tCity 
ORDER BY popu DESC;

SELECT region, name, area, popu 
FROM tCity 
ORDER BY region, name DESC;

SELECT * 
FROM tCity 
ORDER BY area;

SELECT * 
FROM tCity 
ORDER BY 2;

SELECT name 
FROM tCity 
ORDER BY popu;

SELECT name, popu * 10000 / area 
FROM tCity 
ORDER BY popu * 10000 / area;


SELECT * FROM tCity WHERE name = '서울';
SELECT * FROM tCity WHERE name = 서울;
SELECT * FROM tCity WHERE name = "서울";

SELECT * FROM tCity WHERE metro = 'y'; 
SELECT * FROM tCity WHERE metro = 'Y';

SELECT * 
FROM tCity 
WHERE area > 1000;

SELECT name, area 
FROM tCity 
WHERE area > 1000;

SELECT * 
FROM tCity 
WHERE popu >= 10;

SELECT * 
FROM tCity 
WHERE region = '전라';


SELECT * 
FROM tStaff
WHERE salary >= 400;


SELECT * 
FROM tStaff 
WHERE score = NULL;

SELECT * 
FROM tStaff 
WHERE score IS NULL;

SELECT * 
FROM tStaff 
WHERE score IS NOT NULL;


SELECT * 
FROM tCity
WHERE popu >= 100 AND area >= 700;

SELECT * 
FROM tCity 
WHERE region = '경기' AND popu >= 50 OR area >= 500; 

SELECT * 
FROM tCity 
WHERE region = '경기' AND (popu >= 50 OR area >= 500);


SELECT * 
FROM tCity 
WHERE region != '경기';

SELECT * 
FROM tCity 
WHERE NOT(region = '경기');

SELECT * 
FROM tCity 
WHERE region != '전라' AND metro != 'y';

SELECT * 
FROM tCity 
WHERE NOT(region = '전라' OR metro = 'y');


SELECT * 
FROM tCity 
WHERE popu BETWEEN 50 AND 100;

SELECT * 
FROM tCity 
WHERE popu >= 50 AND popu <= 100;

SELECT * 
FROM tStaff 
WHERE name BETWEEN '가' AND '사';

SELECT * 
FROM tStaff 
WHERE joindate BETWEEN '20150101' AND '20180101';

SELECT * 
FROM tCity 
WHERE name LIKE '%천%';

SELECT * 
FROM tCity 
WHERE name NOT LIKE '%천%';

SELECT * 
FROM tCity 
WHERE name LIKE '%천';

SELECT * 
FROM tCity 
WHERE name LIKE '천%';


SELECT * 
FROM tCity 
WHERE region IN ('경상', '전라');

SELECT * 
FROM tCity 
WHERE region = '경상' OR region = '전라';

SELECT * 
FROM tCity 
WHERE region NOT IN ('경상', '전라');

SELECT * 
FROM tStaff 
WHERE name LIKE '이%' OR name LIKE '안%';


SELECT * 
FROM tCity 
WHERE region = '경기' 
ORDER BY area;


SELECT * 
FROM tCity 
ORDER BY area DESC 
LIMIT 4;

SELECT * 
FROM tCity 
ORDER BY area DESC 
LIMIT 2, 3;

SELECT * 
FROM tCity 
ORDER BY area DESC 
LIMIT 3
OFFSET 2 ;

SELECT * 
FROM tCity 
ORDER BY area DESC OFFSET 0 ROWS FETCH NEXT 4 ROWS ONLY;

SELECT * 
FROM tCity 
ORDER BY area DESC OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

SELECT * 
FROM tCity 
WHERE metro = 'n' 
ORDER BY area DESC OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

SELECT *
FROM EMP
WHERE MOD(EMPNO, 2) = 1;

SELECT concat(name, birthyear)
FROM usertbl;

SELECT name, length(name)
FROM usertbl;

SELECT SUBSTRING(HIREDATE, 1, 4) 년도, SUBSTRING(HIREDATE, 6, 2) 달
FROM EMP;


SELECT CAST(1 AS CHAR(10)) AS testChar;

SELECT CAST('1' AS SINGNED) AS testInt;


SELECT IFNULL(10,20);

SELECT IFNULL(NULL,20);

SELECT IFNULL(10/'S',20);

SELECT NULLIF(10,10);

SELECT NULLIF(10,NULL);

SELECT COALESCE(NULL,1);