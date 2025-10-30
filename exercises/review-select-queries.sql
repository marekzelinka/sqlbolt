-- Exercise
--
-- In the exercise below, you will be working with a different table. This
-- table instead contains information about a few of the most populous cities
-- of North America[1] including their population and geo-spatial location in
-- the world.
--
-- Did you know?
-- Positive latitudes correspond to the northern hemisphere, and positive
-- longitudes correspond to the eastern hemisphere. Since North America is
-- north of the equator and west of the prime meridian, all of the cities in
-- the list have positive latitudes and negative longitudes.
--
-- Try and write some queries to find the information requested in the tasks
-- below. You may have to use a different combination of clauses in your query
-- for each task. Once you're done, continue onto the next lesson to learn
-- about queries that span multiple tables.
--
-- Table: north_american_cities
-- city	                country	        population	latitude	longitude
-- Guadalajara	        Mexico	        1500800	    20.659699	-103.349609
-- Toronto	            Canada	        2795060	    43.653226	-79.383184
-- Houston	            United States	2195914	    29.760427	-95.369803
-- New York	            United States	8405837	    40.712784	-74.005941
-- Philadelphia	        United States	1553165	    39.952584	-75.165222
-- Havana	            Cuba	        2106146	    23.05407	-82.345189
-- Mexico City	        Mexico	        8555500	    19.432608	-99.133208
-- Phoenix	            United States	1513367	    33.448377	-112.074037
-- Los Angeles	        United States	3884307	    34.052234	-118.243685
-- Ecatepec de Morelos	Mexico	        1742000	    19.601841	-99.050674
-- Montreal	            Canada	        1717767	    45.501689	-73.567256
-- Chicago	            United States	2718782	    41.878114	-87.629798

-- Tasks:

-- List all the Canadian cities and their populations:
SELECT * FROM north_american_cities WHERE country = "Canada";

-- Order all the cities in the United States by their latitude from north to
-- south:
SELECT *
FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

-- List all the cities west of Chicago, ordered from west to east:
SELECT city
FROM north_american_cities
WHERE longitude < -88
ORDER BY longitude;

-- List the two largest cities in Mexico (by population):
SELECT *
FROM north_american_cities
WHERE country = "Mexico"
ORDER BY population DESC
LIMIT 2;

-- List the third and fourth largest cities (by population) in the United
-- States and their population:
SELECT *
FROM north_american_cities
WHERE country = "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;
