WITH DirectReports AS (
    SELECT managerId, COUNT(*) AS report_count
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
SELECT e.name
FROM DirectReports d
JOIN Employee e ON d.managerId = e.id;
