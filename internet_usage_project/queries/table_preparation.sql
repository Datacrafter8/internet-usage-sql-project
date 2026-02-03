-- creting a copy for analysis
CREATE TABLE internet_usage
LIKE daily_internet_usage_by_age_group;

-- cleaning column 'ï»¿user_id' TO 'user_id'
ALTER TABLE internet_usage
RENAME COLUMN ï»¿user_id TO user_id;

-- transfering data to new table
INSERT INTO internet_usage
SELECT*
FROM daily_internet_usage_by_age_group;
