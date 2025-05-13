SELECT 
    e.employee_id,
    e.name,
    COUNT(*) AS reports_count,
    ROUND(AVG(r.age)) AS average_age
FROM 
    Employees r
JOIN 
    Employees e
ON 
    r.reports_to = e.employee_id
GROUP BY 
    e.employee_id, e.name
ORDER BY 
    e.employee_id;
