-- Concat multiple strings
SELECT CONCAT('h','e','l','l','o');

-- concat columns
SELECT CONCAT(author_fname,' ',author_lname) AS full_name FROM books;

-- concat function with builtin seperator
SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;
