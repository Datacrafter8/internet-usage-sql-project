-- Which device is most used by each age group?
SELECT *
FROM (
    SELECT 
        age_group,
        primary_device,
        COUNT(*) AS usage_count,
        ROW_NUMBER() OVER (PARTITION BY age_group ORDER BY COUNT(*) DESC) AS rn
    FROM internet_usage
    GROUP BY age_group, primary_device
) t
WHERE rn = 1
ORDER BY age_group DESC;