SELECT *,
    CASE
        WHEN Other_Chronic_Med_Condition = 'Yes' OR No_Chronic_Med_Condition = 'No' OR Unknown_Chronic_Med_Condition = 'No' THEN 'Yes'
        WHEN Other_Chronic_Med_Condition = 'No' OR No_Chronic_Med_Condition = 'Yes' OR Unknown_Chronic_Med_Condition = 'Yes' THEN 'No'
        WHEN Other_Chronic_Med_Condition = 'Unknown' OR No_Chronic_Med_Condition = 'Unknown' OR Unknown_Chronic_Med_Condition = 'Unknown' THEN 'Unknown'
        END AS Chronic_Condition
FROM
    PC_2019 p
WHERE Region_Served = 'New York City'

UNION ALL

SELECT
    *,
    CASE
        WHEN Other_Chronic_Med_Condition = 'Yes' OR No_Chronic_Med_Condition = 'No' OR Unknown_Chronic_Med_Condition = 'No' THEN 'Yes'
        WHEN Other_Chronic_Med_Condition = 'No' OR No_Chronic_Med_Condition = 'Yes' OR Unknown_Chronic_Med_Condition = 'Yes' THEN 'No'
        WHEN Other_Chronic_Med_Condition = 'Unknown' OR No_Chronic_Med_Condition = 'Unknown' OR Unknown_Chronic_Med_Condition = 'Unknown' THEN 'Unknown'
        END AS Chronic_Condition
FROM 
	PC_2022 p
WHERE Region_Served = 'New York City';