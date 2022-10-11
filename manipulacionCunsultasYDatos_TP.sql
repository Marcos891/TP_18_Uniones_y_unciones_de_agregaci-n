SELECT title, name FROM series INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name FROM episodes 
INNER JOIN actor_episode ON episodes.id = episode_id 
INNER JOIN actors ON actor_id = actors.id;

SELECT DISTINCT first_name, last_name FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "HARRY%";

SELECT DISTINCT first_name, last_name FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actors.id = actor_id
WHERE title LIKE "%Guerra%";

SELECT movies.id, title, IFNULL(name, 'no tiene genero') AS genero
FROM movies
LEFT JOIN genres ON genre_id = genres.id;

SELECT title, datediff(end_date, release_date) AS duracion
FROM series;

SELECT first_name 
FROM actors
WHERE LENGTH(first_name) > 6;

SELECT COUNT(*) AS 'Total'
FROM episodes;

SELECT series.title, seasons.title
FROM series
INNER JOIN seasons ON series.id = seasons.serie_id;

SELECT series.title, COUNT(*) AS temporadas
FROM seasons
INNER JOIN series ON series.id = seasons.serie_id
GROUP BY series.title
HAVING COUNT(*);

