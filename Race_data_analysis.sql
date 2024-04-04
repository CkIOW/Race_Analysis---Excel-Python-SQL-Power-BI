use race_data;
SELECT *
FROM cleaned_race_data;

# How many states were present in the race
SELECT COUNT(DISTINCT State) AS Uni_State
FROM cleaned_race_data;

# what was the average time of men and women
SELECT Gender, AVG(Total_Minutes) as Avg_Time
FROM cleaned_race_data
GROUP BY Gender;

# what were the youngest and Oldest age in the race
SELECT 
    Gender, MIN(Age) AS Youngest, MAX(Age) AS Oldest
FROM
    cleaned_race_data
GROUP BY Gender;

# what was average time for each age group
SELECT 
    age_group,
    AVG(Total_Minutes) as Avg_Race_Time 
FROM 
    (SELECT 
        Total_Minutes,
        CASE 
            WHEN age < 30 THEN 'age_20-29'
            WHEN age < 40 THEN 'age_30-39'
            WHEN age < 50 THEN 'age_40-49'
            WHEN age < 60 THEN 'age_50-59'
            ELSE 'age_60+'
        END AS age_group
    FROM 
        cleaned_race_data
    ) AS age_buckets
GROUP BY 
    age_group;
    
# Top 3 males and females
SELECT 
    Gender, Total_Minutes, Fullname,
    (SELECT COUNT(*) 
     FROM cleaned_race_data AS crd2 
     WHERE crd2.Gender = crd1.Gender AND crd2.Total_Minutes <= crd1.Total_Minutes) AS gender_rank
FROM 
    cleaned_race_data AS crd1
HAVING 
    gender_rank < 4
ORDER BY
    Total_Minutes ASC;

# Creating a view for specific columns 
CREATE VIEW F_50 AS 
SELECT Fullname, Place, `Time`, Total_Minutes, City, State, Age, Gender, latlong
FROM cleaned_race_data;





