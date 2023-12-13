-- Create a database calles shirts_db
CREATE DATABASE shirts_db;

-- create a new table called shirts

CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT,
    article VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    shirt_size VARCHAR(10) NOT NULL,
    last_worn INT NOT NULL,
    PRIMARY KEY(shirt_id)
);

INSERT INTO shirts (article, color, shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'black', 'M', 50 ),
('t-shirt', 'pink', 'S', 0),
('tank top', 'white', 'S', 200),
('polo shirt', 'red', 'M', 5),
('tank top', 'blue', 'M', 15);


INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES(
    'polo shirt',
    'purple',
    'M',
    50
);

SELECT * FROM shirts WHERE shirt_size = "M";

UPDATE shirts SET last_worn = 0
WHERE last_worn = 15

UPDATE shirts 
SET 
    color = 'off white',
    shirt_size = 'XS'
WHERE
    color = 'white';

SELECT * FROM shirts WHERE last_worn=200;
 
DELETE FROM shirts WHERE last_worn=200;
 
 
SELECT * FROM shirts WHERE article='tank top';
 
DELETE FROM shirts WHERE article='tank top';
 
 
 
SELECT * FROM shirts;
 
DELETE FROM shirts;
 
 
 
 
DROP TABLE shirts;
 
 
show tables;