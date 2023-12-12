-- Show all databases in the server
SHOW DATABASES;

-- Create a database in the server
CREATE DATABASE DatabaseName;

-- Dropping/deleting a database in the server
DROP DATABASE DatabaseName;

-- Use database
USE DatabaseName;

-- Creating a new tables
CREATE TABLE tableName
(
    name VARCHAR(100)
    age INT
);

-- Show tables in selected/currently used database
SHOW TABLES;

-- Show more information on tables such as columns
SHOW COLUMNS FROM tableName;
DESC tableName;

-- To drop/delete a table
DROP TABLE tableName;