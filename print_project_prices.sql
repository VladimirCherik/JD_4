SELECT
    project.id AS PROJECT_ID,
    SUM(worker.salary) * DATEDIFF(month, project.start_date, project.finish_date) AS PRISE
FROM
    project
JOIN
    project_worker ON project.id = project_worker.project_id
JOIN
    worker ON project_worker.worker_ID = worker.id
GROUP BY
    project.id
ORDER BY
    PRISE DESC;