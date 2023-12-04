SELECT name, salary 
FROM worker 
WHERE salary = (SELECT MAX(SALARY) FROM worker);