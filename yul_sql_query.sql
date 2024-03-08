--An Exhaustive list of common SQL commands

--How to create Database Table Structure
CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(30),
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));



--SELECT ALL COLUMNS FROM A TABLE
SELECT * FROM TABLE_NAME;
SELECT * FROM FilmLocations;

--Drop a Table
DROP TABLE TableName;

--
SELECT ID, Name FROM COUNTRY ;
SELECT * FROM COUNTRY WHERE ID <= 5 ;
SELECT * FROM COUNTRY WHERE CCode = 'CA' ;


--SQL Basics
--SELECT statement is used to fetch data from a database.
SELECT city FROM placeofinterest;
--WHERE clause is used to extract only those records that fulfill a specified condition.
SELECT * FROM placeofinterest WHERE city == 'Rome' ;
--COUNT is a function that takes the name of a column as argument and counts the number of rows when the column is not NULL.
SELECT COUNT(country) FROM placeofinterest WHERE country='Canada';
--DISTINCT function is used to specify that the statement is a query which returns unique values in specified columns.
SELECT DISTINCT country FROM placeofinterest WHERE type='historical';
--LIMIT is a clause to specify the maximum number of rows the result set must have.
SELECT * FROM placeofinterest WHERE airport="pearson" LIMIT 5;
--INSERT is used to insert new rows in the table.
INSERT INTO placeofinterest (name,type,city,country,airport) VALUES('Niagara Waterfalls','Nature','Toronto','Canada','Pearson');
--UPDATE used to update the rows in the table.
UPDATE placeofinterest SET name = 'Niagara Falls' WHERE name = "Niagara Waterfalls";
--DELETE statement is used to remove rows from the table which are specified in the WHERE condition.
DELETE FROM placeofinterest WHERE city IN ('Rome','Vienna');










