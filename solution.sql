-- Question #1
SELECT * FROM authors;

-- QUESTION #2
SELECT * FROM authors
JOIN distinguished_authors ON authors.id = distinguished_authors.id;

-- QUESTION #3
SELECT authors.last_name,authors.first_name FROM authors
LEFT JOIN distinguished_authors
ON authors.id = distinguished_authors.id
WHERE distinguished_authors IS null;

-- QUESTION #4
SELECT COUNT(authors.id) FROM authors;

-- QUESTION #5
SELECT 
 authors_and_titles[1:1][1:1],
 authors_and_titles[2:2][1:1],
 authors_and_titles[3:3][1:1]
FROM favorite_authors
JOIN employees ON favorite_authors.employee_id = employees.id
WHERE employees.first_name = 'Michael';

-- QUESTION #6
SELECT DISTINCT title FROM books
LEFT OUTER JOIN editions ON books.id = editions.book_id
LEFT OUTER JOIN stock ON editions.isbn = stock.isbn;

-- QUESTION #7
INSERT INTO authors (id, last_name, first_name)
VALUES (25044, 'Eastman', 'P.D.');

INSERT INTO books (id, title,author_id,subject_id)
VALUES (41480, 'Go Dog Go', 25044, 2);

INSERT INTO editions (isbn, book_id, edition, publication)
VALUES (0394800206, 41480, 1, '1961-03-12');

-- QUESTION #8
SELECT DISTINCT first_name,last_name FROM authors
LEFT OUTER JOIN books ON authors.id = books.author_id
LEFT OUTER JOIN editions ON books.id = editions.book_id
LEFT OUTER JOIN stock ON editions.isbn = stock.isbn
WHERE stock > 1

-- QUESTION #9
SELECT title FROM books
JOIN editions ON books.id = editions.book_id
JOIN stock ON editions.isbn = stock.isbn
ORDER BY stock DESC
LIMIT 1
