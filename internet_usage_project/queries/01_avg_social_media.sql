-- What is the average time spent on social media by each age group?
SELECT 
    age_group,
    ROUND(AVG(social_media_hours), 2) AS avg_social_media_hours
FROM internet_usage
GROUP BY age_group
ORDER BY avg_social_media_hours DESC;