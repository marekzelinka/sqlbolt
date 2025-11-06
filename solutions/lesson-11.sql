-- Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(*) AS Number_of_artists
FROM employees
WHERE role = "Artist";

-- Find the number of Employees of each role in the studio
SELECT role, COUNT(*) as Number_of_employees_by_role
FROM employees
GROUP BY role;

-- Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";
