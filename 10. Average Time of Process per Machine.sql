SELECT 
    start_logs.machine_id,
    ROUND(AVG(end_logs.timestamp - start_logs.timestamp), 3) AS processing_time
FROM
    Activity start_logs
JOIN 
    Activity end_logs
ON 
    start_logs.machine_id = end_logs.machine_id AND
    start_logs.process_id = end_logs.process_id AND
    start_logs.activity_type = 'start' AND
    end_logs.activity_type = 'end'
GROUP BY 
    start_logs.machine_id;
