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
SELECT REPLACE(title, ' ', '-') FROM books;

-- reverse
SELECT REVERSE('Hello World');

-- Length
SELECT CHAR_LENGTH("Hello");
SELECT CHAR_LENGTH(title), title FROM books;