SELECT * FROM causedeath;
SELECT * FROM causestate;
SELECT * FROM causeyear;

CREATE TABLE "combined_data"(
"ID"INT NOT NULL,
"Year" INT NOT NULL,
"113_Cause_Name" VARCHAR(100)NOT NULL,
"Cause_Name" VARCHAR (100) NOT NULL,
"State" VARCHAR(50) NOT NULL,
"Deaths" INT NOT NULL,
"Age_adjusted_Death_Rate" FLOAT NOT NULL

);

SELECT * FROM combined_data;

SELECT COUNT('ID') AS Total_ID FROM combined_data;

--- How have specific causes of death changed over time?--

SELECT "Year","113_Cause_Name", SUM("Deaths") AS Total_Deaths ,
AVG("Age_adjusted_Death_Rate") AS Avg_Death_Rate
FROM combined_data
GROUP BY "Year", "113_Cause_Name"
ORDER BY "Year", Total_Deaths DESC;


---- Which states have the highest number of deaths for specific causes?

SELECT "State", "113_Cause_Name", SUM("Deaths") AS total_deaths
FROM combined_data
GROUP BY "State", "113_Cause_Name"
ORDER BY total_deaths DESC
LIMIT 10;

--- Which states have the lowest number of deaths for specific causes?
SELECT "State", "113_Cause_Name", SUM("Deaths") AS total_deaths
FROM combined_data
GROUP BY "State", "113_Cause_Name"
HAVING SUM("Deaths") > 0  
ORDER BY total_deaths ASC
LIMIT 10; 

--- What are the most common causes of death?

SELECT "113_Cause_Name", SUM("Deaths") AS total_deaths
FROM combined_data
GROUP BY "113_Cause_Name"
ORDER BY total_deaths DESC
LIMIT 10;

--- How do the death rates for a specific cause vary between states or regions?
--we can change the cause name by replace "stroke"

SELECT "State", AVG("Age_adjusted_Death_Rate") AS avg_death_rate
FROM combined_data
WHERE "Cause_Name" = 'Stroke'
GROUP BY "State"
ORDER BY avg_death_rate DESC;

--- Are there differences in trends for states with high vs. low death rates?

--IN DESC ORDER

SELECT "State", AVG("Age_adjusted_Death_Rate") AS avg_death_rate
FROM combined_data
GROUP BY "State"
ORDER BY avg_death_rate DESC
LIMIT 5; 

--IN ASC ORDER

SELECT "State", AVG("Age_adjusted_Death_Rate") AS avg_death_rate
FROM combined_data
GROUP BY "State"
ORDER BY avg_death_rate ASC
LIMIT 5;