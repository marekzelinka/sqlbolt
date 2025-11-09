-- The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies
SET director = "John Lasseter"
WHERE title = "A Bug's Life";

-- The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies
SET year = 1999
WHERE title = "Toy Story 2";
-- we could also do: WHERE id = 3;

-- Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
-- First we find the id of the movie we need to update, in this case 11
SELECT id
FROM movies
WHERE title = "Toy Story 8";
-- Now we can update the title and director of the specific movie
UPDATE movies
SET title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE id = 11;
