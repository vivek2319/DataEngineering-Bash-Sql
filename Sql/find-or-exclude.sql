--- Syntax for finding or excluding exact matches
--- SELECT <columns> FROM <table> WHERE <column> <operator> <value>;
SELECT title, author FROM books WHERE first_published = 1997;
SELECT title, first_published FROM books WHERE author = "J.K. Rowling";
SELECT title, author, first_published FROM books WHERE author != "J.K. Rowling";
SELECT book_id FROM loans WHERE loaned_on = "2015-12-10";
SELECT title FROM books WHERE id = 15;
