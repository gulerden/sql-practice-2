CREATE TABLE developers(
	id SERIAL,
	name VARCHAR(50),
	EMAİL VARCHAR(50) UNIQUE,
	SALARY REAL,
	PROG_LANG VARCHAR(20)
);
SELECT * FROM developers;

INSERT INTO developers(name, EMAİL, SALARY, PROG_LANG) VALUES (
	'SAFFET BEY',
	'DEV@EMAİL.COM',
	3000,
	'Python'
);
INSERT INTO developers(name, EMAİL, SALARY, PROG_LANG) VALUES (
	'AHMET BEY',
	'JAV@EMAİL.COM',
	3000,
	'JAVA'
);

SELECT * FROM developers;

--11 nut null
CREATE TABLE doctors(
	id SERIAL,
	name VARCHAR(50) NOT NULL,--TABLOYA DEĞER ATANMASINI ZORUNLU KILIYOR
	EMAİL VARCHAR(50) UNIQUE,
	SALARY REAL,
	PROG_LANG VARCHAR(20)
);

INSERT INTO doctors(name, EMAİL, SALARY) VALUES(
	'ömer faruk',
	'dceamai@.com',
	5000
);
INSERT INTO doctors(name, EMAİL, SALARY) VALUES(
	'',
	'dfamai@.com',
	6000
);

INSERT INTO doctors(name, EMAİL, SALARY) VALUES(
	'',
	'dfamai@.com',
);

--12-- pk constranit ekleme
CREATE TABLE students2(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	grade REAL,
	register_date DATE
);

SELECT * FROM students2;

--PRIMARY KEY OLUŞTURMA 2
CREATE TABLE students3(
	id INT ,
	name VARCHAR(50) NOT NULL,
	grade REAL,
	register_date DATE,
	CONSTRAINT std_pk PRIMARY KEY (id)
);
SELECT * FROM students3;
--13 composit key 
CREATE TABLE students4(
	id INT ,
	name VARCHAR(50) NOT NULL,
	grade REAL,
	register_date DATE,
	CONSTRAINT std_pk4 PRIMARY KEY (id, name)
);
SELECT * FROM students4;

--14 foreıgn key 
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE ADRESS(
	ADRESS_İD INT,
	STREET VARCHAR(50),
	CİTY VARCHAR(50),
	STUDENT_İD INT,---FK, NULL KABUL EDİLİR,DUPLICATE
	CONSTRAINT add_fk FOREIGN KEY(STUDENT_İD) REFERENCES students3(id)
);

SELECT * FROM ADRESS;

--15 CHECK 
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT CHECK (Age >= 10 AND Age <= 18)
);
INSERT INTO Students (StudentID, FirstName, LastName, Age)
VALUES (1, 'John', 'Doe', 13);

INSERT INTO Students (StudentID, FirstName, LastName, Age)
VALUES (2, 'Jane', 'Smith', 15);

SELECT * FROM Students;

