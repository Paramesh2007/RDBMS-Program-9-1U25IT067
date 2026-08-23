CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    DepartmentID numeric(10) PRIMARY KEY,
    DepartmentName VARCHAR(20)
);

INSERT INTO Department
VALUES (101,'Computer Science');
INSERT INTO Department
VALUES (102,'Mathematics');
INSERT INTO Department
VALUES (103,'Physics');

CREATE TABLE Student(
    StudentID numeric(10),
    StudentName VARCHAR(10),
    DepartmentID numeric(10),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Student
VALUES (1001,'ARUN',101);
INSERT INTO Student
VALUES (1002,'DIVYA',102);
INSERT INTO Student
VALUES (1003,'KARTHIK',101);
INSERT INTO Student
VALUES (1004,'NISHA',103);

SELECT
    Student.StudentName,
    Department.DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID = Department.DepartmentID;
