SELECT * FROM movies

SELECT first_name, last_name, rating FROM actors

SELECT title AS título FROM series

SELECT first_name, last_name FROM actors WHERE rating >= 7.5

SELECT title, rating, awards FROM movies WHERE rating >= 7.5 and awards >= 2

SELECT title, rating FROM movies ORDER BY rating

SELECT title FROM movies LIMIT 3

SELECT * FROM movies ORDER BY rating DESC LIMIT 5

SELECT * FROM actors LIMIT 10

SELECT title, rating FROM movies WHERE title LIKE '%Toy Story%'

SELECT * FROM actors WHERE first_name LIKE 'Sam%'

SELECT * FROM movies WHERE release_date BETWEEN '2004-01-01' AND '2008-12-31'

SELECT title FROM movies WHERE rating > 3 AND awards > 1 AND release_date BETWEEN '1988-01-01' AND '2009-12-31' ORDER BY rating