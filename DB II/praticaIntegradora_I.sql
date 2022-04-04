SELECT series.title, genres.name FROM series
LEFT JOIN genres
ON series.genre_id = genres.id

SELECT episodes.title, actors.first_name FROM actor_episode
RIGHT JOIN episodes
ON actor_episode.episode_id = episodes.id
RIGHT JOIN actors
ON actor_episode.actor_id = actors.id

SELECT series.title AS título, COUNT(*) AS temporadas FROM seasons
RIGHT JOIN series
ON seasons.serie_id = series.id
GROUP BY título

SELECT genres.name AS gênero, COUNT(*) AS total_de_filmes FROM movies
RIGHT JOIN genres
ON movies.genre_id = genres.id
GROUP BY gênero
HAVING COUNT(*) >= 3

SELECT DISTINCT actors.first_name, actors.last_name FROM actor_movie
RIGHT JOIN movies
ON actor_movie.movie_id = movies.id
RIGHT JOIN actors
ON actor_movie.actor_id = actors.id
WHERE movies.title LIKE '%Guerra nas Estrelas%'
