# 3-DML-Commands
## SQL Queries to work on DML Commands

### SQL Queries for DML Commands

This repository contains a collection of SQL queries designed to test and demonstrate common DML (Data Manipulation Language) commands. These queries include creating tables, inserting data, and retrieving/manipulating records in a relational database. The database structure and commands are intended to help you better understand how to interact with databases using SQL.

1. `DML Queries`
- `Insert Rows`
- `Select Data`

2. Table Structure
The table Managers has the following structure:

Manager_Id (INT): A unique identifier for each manager.
First_name (VARCHAR): The first name of the manager.
Last_name (VARCHAR): The last name of the manager.
DOB (DATE): The date of birth of the manager.
Age (INT): The age of the manager with a check constraint (must be greater than or equal to 18).
Last_update (TIMESTAMP): The timestamp of the last update (defaults to the current time).
Gender (CHAR(1)): The gender of the manager with a constraint allowing 'M' (Male) or 'F' (Female) or 'O'(Others).
Department (VARCHAR): The department where the manager works.
Salary (DECIMAL): The monthly salary of the manager (NOT NULL).
