-- Exercise
--
-- We will be using a database with data about some of Pixar's classic movies
-- for most of our exercises. This first exercise will only involve the Movies
-- table, and the default query below currently shows all the properties of
-- each movie. To continue onto the next lesson, alter the query to find the
-- exact information we need for each task.
--
-- Table: movies
-- id	title	director	year	length_minutes
-- 1	Toy Story	John Lasseter	1995	81
-- 2	A Bug's Life	John Lasseter	1998	95
-- 3	Toy Story 2	John Lasseter	1999	93
-- 4	Monsters, Inc.	Pete Docter	2001	92
-- 5	Finding Nemo	Andrew Stanton	2003	107
-- 6	The Incredibles	Brad Bird	2004	116
-- 7	Cars	John Lasseter	2006	117
-- 8	Ratatouille	Brad Bird	2007	115
-- 9	WALL-E	Andrew Stanton	2008	104
-- 10	Up	Pete Docter	2009	101


-- Solutions

-- Find the title of each film:
SELECT title FROM movies;

-- Find the director of each film:
SELECT director FROM movies;

-- Find the title and director of each film:
SELECT title, director FROM movies;

-- Find the title and year of each film:
SELECT title, year FROM movies;

-- Find all the information about each film:
SELECT * FROM movies;
