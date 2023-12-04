SELECT 
	name, 
	SELECT count(client_id)
    FROM project
    GROUP BY client_id 
    ORDER BY count(client_id) DESC
    LIMIT 1 AS PROJECT_COUNT
FROM client
WHERE id IN (
    SELECT client_id
    FROM project
    GROUP BY client_id
    HAVING count (id) IN (
        SELECT count(client_id)
        FROM project
        GROUP BY client_id 
        ORDER BY count(client_id) DESC
        LIMIT 1
    )
)


