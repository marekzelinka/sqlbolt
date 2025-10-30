-- Exercise
--
-- There are a few concepts in this lesson, but all are pretty straight-forward
-- to apply. To spice things up, we've gone and scrambled the Movies table for
-- you in the exercise to better mimic what kind of data you might see in real
-- life. Try and use the necessary keywords and clauses introduced above in
-- your queries.
--
-- Table: movies
-- id	title	director	year	length_minutes
-- 1	Toy Story 3	Lee Unkrich	2010	103
-- 2	The Incredibles	Brad Bird	2004	116
-- 3	Finding Nemo	Andrew Stanton	2003	107
-- 4	Up	Pete Docter	2009	101
-- 5	Ratatouille	Brad Bird	2007	115
-- 6	Toy Story 2	John Lasseter	1999	93
-- 7	Cars 2	John Lasseter	2011	120
-- 8	Cars	John Lasseter	2006	117
-- 9	Toy Story	John Lasseter	1995	81
-- 10	Brave	Brenda Chapman	2012	102
-- 11	Monsters University	Dan Scanlon	2013	110
-- 12	A Bug's Life	John Lasseter	1998	95
-- 13	WALL-E	Andrew Stanton	2008	104
-- 14	Monsters, Inc.	Pete Docter	2001	92

-- Tasks:

-- List all directors of Pixar movies (alphabetically), without duplicates:
SELECT DISTINCT director FROM movies ORDER BY director;

-- List the last four Pixar movies released (ordered from most recent to least):
SELECT * FROM movies ORDER BY year DESC LIMIT 4;

-- List the first five Pixar movies sorted alphabetically:
SELECT * FROM movies ORDER BY title LIMIT 5;

-- List the next five Pixar movies sorted alphabetically:
SELECT * FROM movies ORDER BY title LIMIT 5 OFFSET 5;
