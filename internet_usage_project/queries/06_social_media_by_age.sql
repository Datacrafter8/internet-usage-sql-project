-- Ranking Age Groups by Social Media Usage
SELECT 
    age_group,
    ROUND(AVG(social_media_hours), 2) AS avg_social,
    RANK() OVER (ORDER BY AVG(social_media_hours) DESC) AS rank_social_usage
FROM internet_usage
GROUP BY age_group;