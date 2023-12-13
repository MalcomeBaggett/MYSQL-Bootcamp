-- Create a cats table
CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

-- Bulk insert into the the cats DB
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- Select all from a table
SELECT * FROM cats;

-- Select column from a table
SELECT  name FROM cats;

-- Select multiple specific columns
SELECT name, breed FROM cats;

-- Select certain fields conditionally
SELECT name, age FROM cats WHERE age = 4;

-- Select all by id
SELECT id FROM cats;

-- Select name and breed 
SELECT name, breed FROM cats;

-- Select name and age from cats who are of the breed tabby
SELECT name, age FROM cats WHERE breed = "Tabby";

-- Select name and age where cat id = age
SELECT name, age FROM cat WHERE cat_id = age;

-- Alias example
SELECT cat_id as id, age, name FROM cat where cat_id = age;

-- UPDATE, without a where clause it will be update all rows in the table
UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';

UPDATE cats SET age=14 WHERE name='Misty';

-- Change name of a certain cat
UPDATE cats SET name="Jack"
WHERE name="Jackson";

-- Delete
DELETE FROM  cats WHERE name="Egg";

-- Delete all rows from a table
DELETE FROM cats;

-- Delete all cats where age is 4
DELETE FROM cats where age = 4;

-- Delete all cats whose id and age are the same
DELETE FROM cats where age = cat_id;