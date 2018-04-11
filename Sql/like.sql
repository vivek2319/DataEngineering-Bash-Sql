
-- Placing the percent symbol (%) any where in a string in conjunction with the LIKE keyword will operate as a wildcard. Meaning it can be substituted by any number of characters, including zero!

SELECT <columns> FROM <table> WHERE <column> LIKE <pattern>;

-- Examples:

SELECT title FROM books WHERE title LIKE "Harry Potter%Fire";
SELECT title FROM movies WHERE title LIKE "Alien%";
SELECT * FROM contacts WHERE first_name LIKE "%drew";
SELECT * FROM books WHERE title LIKE "%Brief History%";

-- PostgreSQL Specific Keywords

-- LIKE in PostgreSQL is case-sensitive. To case-insensitive searches do ILIKE.

SELECT * FROM contacts WHERE first_name ILIKE "%drew";
