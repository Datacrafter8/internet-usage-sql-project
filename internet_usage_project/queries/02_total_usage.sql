-- What is the total average internet usage per age group?
SELECT 
    age_group,
    ROUND(AVG(social_media_hours + work_or_study_hours + entertainment_hours), 2) AS avg_total_hours
FROM internet_usage
GROUP BY age_group
ORDER BY avg_total_hours DESC;