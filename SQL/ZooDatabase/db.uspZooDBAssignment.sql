USE db_zooTest2
GO

/* Assignment 1 */

SELECT * FROM tbl_habitat;

/* Assignment 2 */

SELECT species_name
FROM tbl_species
WHERE species_order = 3;

/* Assignment 3 */

SELECT nutrition_type
FROM tbl_nutrition
WHERE nutrition_cost <= 600;

/* Assignment 4 */

SELECT species_name
FROM tbl_species
WHERE species_nutrition BETWEEN 2202 AND 2206;

/* Assignment 5 */

SELECT species_name, nutrition_type
FROM tbl_species AS [Species Name], tbl_nutrition AS [Nutrition Type]

/* Assignment 6 */

SELECT s.specialist_fname, s.specialist_lname, s.specialist_contact, a.species_name
FROM tbl_specialist AS s, tbl_species AS a
WHERE species_name = 'penguin'

/* Assignment 7 */

CREATE DATABASE db_mediaLibrary;

CREATE TABLE tbl_movies(
	movie_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	movie_title VARCHAR(50) NOT NULL,
	movie_genre VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_actors (
	actor_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	movie_id INT FOREIGN KEY REFERENCES tbl_movies(movie_id),
	actor_fname VARCHAR(50) NOT NULL,
	actor_lname VARCHAR(50) NOT NULL,
	actor_specialty VARCHAR(50) NOT NULL
);

INSERT INTO tbl_movies
	(movie_title, movie_genre)
	VALUES
	('Avengers Endgame','Sci-Fi'),
	('Captain America The First Avenger','Sci-Fi'),
	('Black Panther','Sci-Fi'),
	('Doctor Strange','Sci-Fi'),
	('WandaVision','Sci-Fi'),
	('What If','Sci-Fi')
;

INSERT INTO tbl_actors
	(actor_fname, actor_lname, actor_specialty)
	VALUES
	('bob','hope','Sci-Fi'),
	('betty','white','Sci-Fi'),
	('charles','xavier','Sci-Fi'),
	('tom','cruise','Action'),
	('peter','parker','Sci-Fi'),
	('stan','marsh','Sci-Fi')
;

SELECT movie_genre
FROM tbl_movies
INNER JOIN tbl_actors
ON tbl_movies.movie_genre = tbl_actors.actor_specialty;