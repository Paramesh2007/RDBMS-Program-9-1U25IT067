DROP DATABASE IF EXISTS COllageDB;
CREATE DATABASE CollageDB;
USE CollageDB;
CREATE TABLE Student(StudentID numeric(10)PRIMARY KEY,
                     StudentName VARCHAR(10),
                     DepartmentID INT(10)PRIMARY KEY
                     );
INSERT INTO Student
VALUES (1001,'ARUN',101);
INSERT INTO Student
VALUES (1002,'DIVYA',102);
INSERT INTO Student
VALUES (1003,'KARTHIK',101);
INSERT INTO Student
VALUES (1004,'NISHA',103);
CREATE TABLE Department (DepartmentID numeric(10),DepartmentName VARCHAR(20)
                         );
INSERT INTO Department
VALUES (101,'Computer Science');
INSERT INTO Department
VALUES (102,'Mathematics');
INSERT INTO Department
VALUES (103,'Physics');
SELECT
    Student.StudentName,
    Department.DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID = Department.DepartmentID;



