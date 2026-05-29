SELECT country COUNT(*) AS num_figures
FROM historical_figures
GROUP BY country
ORDER BY num_figures DESC;
LIMIT 10;