-- Find the number of movies each director has directed:
SELECT director, COUNT(id) as Count_movies_directed
FROM movies
GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director:
SELECT
    director,
    SUM(domestic_sales + international_sales) AS
        Cumulative_sales_from_all_movies
FROM movies
    LEFT JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;

-- Notes:
    -- SUM is like [].reduce() in JavaScript, it finds the sum of all numerical values in the specified column for the rows in the group.
