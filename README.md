# Internet Usage Analysis (SQL Project)

#Project Overvie
This project analyzes daily internet usage patterns across different age groups using SQL. 
The goal is to understand how people allocate their online time between social media, work/study, and entertainment, and how this varies by age group.

#Tools Used
- MySQL
- CSV dataset

#Project Structure
- `data/` → Contains the dataset
- `queries/` → Contains all SQL analysis queries

# Key Questions Answered
- How does social media usage vary by age group?
- Which age group spends the most time online?
- What devices are most commonly used by each age group?
- Does connection type differ across age groups?

```sql
WITH usage_summary AS (
    SELECT 
        age_group,
        AVG(social_media_hours) AS avg_social,
        AVG(work_study_hours) AS avg_work,
        AVG(entertainment_hours) AS avg_entertainment
    FROM internet_usage
    GROUP BY age_group
)
SELECT 
    age_group,
    ROUND(avg_social, 3) AS avg_social,
    ROUND(avg_work, 3) AS avg_work,
    ROUND(avg_entertainment, 3) AS avg_entertainment
FROM usage_summary
ORDER BY avg_social DESC;
