SELECT 
    id AS PROJECT_ID, 
    DATEDIFF(month, start_date, finish_date) AS MONTH_COUNT
FROM project
WHERE 
DATEDIFF(month, start_date, finish_date) = 
    (SELECT MAX(DATEDIFF(month, start_date, finish_date))FROM project)