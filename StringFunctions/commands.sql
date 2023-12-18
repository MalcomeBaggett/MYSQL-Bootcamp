-- Concat multiple strings
SELECT
    CONCAT('h', 'e', 'l', 'l', 'o');

-- concat columns
SELECT
    CONCAT(author_fname, ' ', author_lname) AS full_name
FROM
    books;

-- concat function with builtin seperator
SELECT
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM
    books;

-- Substrings
SELECT
    SUBSTRING('Hello World', 1, 4);

-- if you only pass in one param it goes from the index until the end of the string
SELECT
    SUBSTRING('Hello World', 7);

-- Negative numbers start from the end of the string
SELECT
    SUBSTRING('Hello World', -1);

-- Use with columns form tables
SELECT
    SUBSTRING(title, 1, 15)
FROM
    books;

SELECT
    DISTINCT SUBSTRING(author_lname, 1, 1),
    author_lname
FROM
    books;

-- Combining string functions
SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title
FROM
    books;

SELECT
    SUBSTRING(author_fname, 1, 1),
    SUBSTRING(author_lname, 1, 1)
FROM
    books;

SELECT
    CONCAT(
        SUBSTRING(author_fname, 1, 1),
        '.',
        SUBSTRING(author_lname, 1, 1),
        '.'
    ) AS initials
FROM
    books;

-- replace functions
SELECT
    REPLACE('Hello World', 'Hell', '%$#@');

-- -> %$#@o World
SELECT
    REPLACE('cheese bread coffee milk', ' ', ' and ');

-- replace spaces with -
SELECT
    REPLACE(title, ' ', '-')
FROM
    books;

-- reverse
SELECT
    REVERSE('Hello World');

-- Length
SELECT
    CHAR_LENGTH("Hello");

SELECT
    CHAR_LENGTH(title),
    title
FROM
    books;

-- Upper and Lower
SELECT
    LOWER('Hello World');

SELECT
    UPPER('Hello');

-- Insert
SELECT
INSERT
    ('Hello Bobby', 6, 0, ' there');

-- Left and Right
SELECT
    LEFT('OMG This is weird', 3);

SELECT
    RIGHT('OMG This is weird', 3);

-- repeat
SELECT
    REPEAT('MySql', 3);

-- Trim
SELECT
    TRIM('    25 1');

SELECT
    TRIM(
        LEADING '.'
        FROM
            '.........san fran..'
    );

SELECT
    REVERSE(
        UPPER('Why does my cat look at me with such hatred?')
    );

SELECT
    REPLACE(title, ' ', '->') AS title
FROM
    books;

SELECT
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
FROM
    books;

SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
    books;

SELECT
    CONCAT(title, ' was released in ', released_year) AS blurb
FROM
    books;

SELECT
    title,
    CHAR_LENGTH(title) AS character_count
FROM
    books;

SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;