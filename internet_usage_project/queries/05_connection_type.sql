-- Does connection type vary by age group?
SELECT 
    age_group,
    internet_type,
    COUNT(*) AS user_count
FROM internet_usage
GROUP BY age_group, internet_type
ORDER BY age_group, user_count DESC;