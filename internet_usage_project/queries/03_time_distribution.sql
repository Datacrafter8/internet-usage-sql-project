-- How do different age groups distribute their time online?
SELECT 
    age_group,
    ROUND(AVG(social_media_hours), 2) AS avg_social_media,
    ROUND(AVG(work_or_study_hours), 2) AS avg_work_study,
    ROUND(AVG(entertainment_hours), 2) AS avg_entertainment
FROM internet_usage
GROUP BY age_group;