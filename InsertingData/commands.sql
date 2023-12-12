-- Create a table
CREATE TABLE tableName (
    name VARCHAR(50),
    age INT
);

-- Insert a cat
INSERT INTO cats (name, age)
VALUES ("Blue Steele", 5);

-- Insert another cat
INSERT INTO cats (name, age)
VALUES ("Leeroy Jenkins", 69);

-- Select all from a table
SELECT * FROM cats;

-- Multiple inserts
INSERT INTO cats (name, age)
VALUES
    ("Meatball", 5),
    ("Turkey", 2),
    ("Poe", 15);

-- How to ensure values must not be null
CREATE TABLE cat2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

-- Defining tables with default values
CREATE TABLE cats3  (    
    name VARCHAR(20) DEFAULT 'no name provided',    
    age INT DEFAULT 99  
);

-- Two ways off specifying a primary key
CREATE TABLE unique_cats (
    cat_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE moar_cats (
    cat_id INT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
)

-- Add an auto incrementing ID for a primary key
CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);