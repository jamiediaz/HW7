DROP TABLE IF EXISTS DEPARTMENTS cascade;

CREATE TABLE DEPARTMENTS(
	DEPT_NO char(10) NOT NULL,
	DEPT_NAME char(30) NOT NULL,
	PRIMARY KEY (DEPT_NO)
);


DROP TABLE IF EXISTS DEPT_EMP cascade;

CREATE TABLE DEPT_EMP(
	EMP_NO char(10) NOT NULL,
	DEPT_NO char(10) NOT NULL,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO) MATCH FULL,
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS (DEPT_NO) MATCH FULL
	
);


DROP TABLE IF EXISTS  EMPLOYEES cascade;

CREATE TABLE EMPLOYEES(
	EMP_NO char(10) NOT NULL,
	BIRTH_DATE char(10) NOT NULL,
	FIRST_NAME char(30),
	LAST_NAME char(30),
	GENDER char(1) NOT NULL,
	HIRE_DATE char(10) NOT NULL,
	PRIMARY KEY (EMP_NO)

);


DROP TABLE IF EXISTS SALARIES cascade;

CREATE TABLE SALARIES(
	EMP_NO char(10) NOT NULL,
	SALARY char(10) NOT NULL,
	FROM_DATE char(10) NOT NULL,
	TO_DATE char(10),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO) MATCH FULL

);



DROP TABLE IF EXISTS TITLES cascade;

CREATE TABLE TITLES(
	EMP_NO char(10) NOT NULL,
	TITLE char(30),
	FROM_DATE char(10) NOT NULL,
	TO_DATE char(10),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO) MATCH FULL

);


DROP TABLE IF EXISTS DEPT_MANAGER cascade;

CREATE TABLE DEPT_MANAGER(
	DEPT_NO char(10) NOT NULL,
	EMP_NO char(10) NOT NULL,
	FROM_DATE char(10) NOT NULL,
	TO_DATE char(10) NOT NULL,
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS (DEPT_NO) MATCH FULL,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES (EMP_NO) MATCH FULL

);


