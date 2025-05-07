SELECT 
  contest_id,
  ROUND(COUNT(DISTINCT user_id) * 100.0 / total_users.total, 2) AS percentage
FROM Register,
     (SELECT COUNT(*) AS total FROM Users) AS total_users
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;
