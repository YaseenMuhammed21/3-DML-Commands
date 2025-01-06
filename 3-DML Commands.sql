# Create a table named Managers with fields : Manager_Id, First_name, Last_Name, DOB, Age ->Use check constraint Last_update, Gender, Department and Salary -> NOT NULL 

-- 1. Insert 10 rows. 

-- 2. Write a query that retrieves the name and date of birth of the manager with Manager_Id 1. 

-- 3. Write a query to display the annual income of all managers. 

-- 4. Write a query to display records of all managers except ‘Aaliya’. 

-- 5. Write a query to display details of managers whose department is IT and earns more than 25000 per month. 

-- 6. Write a query to display details of managers whose salary is between 10000 and 35000.

#Creating the database Company

create database Company;

#Using the database to create the managers table

use Company;

#creating the table Managers with fields Manager_Id, First_name, Last_Name, DOB, Age ->Use check constraint Last_update, Gender, Department and Salary -> NOT NULL 

CREATE TABLE Managers (
    Manager_Id int primary key,
    First_Name varchar(50) not null, #First Name should not be null
    Last_Name varchar(50),
    DOB date,
    Age int check (Age >= 18), #Age should be greater than or equal to 18
    Last_Update timestamp default current_timestamp, #Will return the time of Last_update
    Gender char(1) check (Gender IN ('M', 'F','O')), #Gender must be either 'M' or 'F' or 'O'
    Department varchar(50),
    Salary decimal(10, 2) NOT NULL #Salary cannot be null
);

#Inserting the data into the table Managers

INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES
	(1, 'Rani', 'Doe', '1986-02-15', 38, 'F', 'HR', 30000.00),
	(2, 'Raman', 'Rai', '1991-07-22', 33, 'M', 'Finance', 25000.00),
	(3, 'Aaliya', 'Khan', '1999-10-10', 25, 'F', 'IT', 28000.00),
	(4, 'Haddin', 'Brad', '1988-05-25', 36, 'M', 'Marketing', 35000.00),
	(5, 'Sumya', 'Khan', '1995-03-30', 29, 'F', 'HR', 27000.00),
	(6, 'Abdul', 'Jr', '1988-01-12', 36, 'M', 'Finance', 32000.00),
	(7, 'Muhammed', 'Qahtani', '1995-11-17', 29, 'M', 'IT', 23000.00),
	(8, 'Krishna', 'Darbas', '1973-04-20', 51, 'M', 'Sales', 24000.00),
	(9, 'Edison', 'Sabu', '1991-06-05', 33, 'M', 'Marketing', 29000.00),
	(10, 'Emi', 'Martinez', '1972-12-11', 52, 'M', 'IT', 31000.00)
;

select * from Managers; #Showing the table entries

#Query to retrieves the name and date of birth of the manager with Manager_Id 1

SELECT First_Name, Last_Name, DOB #Retriving the First_Name, Last_Name and DOB for the manager has the Manager_Id=1
FROM Managers
WHERE Manager_Id = 1;

 #Query to display the annual income of all managers.
 
SELECT First_Name, Last_Name, Salary * 12 as Annual_Income #Multiplying the monthly salary into 12 and retriving into the new column Anuual_Income
FROM Managers;

#Query to display records of all managers except ‘Aaliya’

SELECT * FROM Managers
WHERE First_name != 'Aaliya'; #Showing Managers details except Aaliya

#Query to display details of managers whose department is IT and earns more than 25000 per month.

SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000; #Retriving the records of the Salary who is in IT Department and the salary is greater than 25000

#Query to display details of managers whose salary is between 10000 and 35000.

SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000; #Retrieving the data of managers who has the salary in between 10000 and 35000


