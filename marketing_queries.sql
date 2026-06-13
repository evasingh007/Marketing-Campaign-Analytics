CREATE DATABASE marketing_analytics;
USE marketing_analytics;
SELECT Company, 
       COUNT(Campaign_ID) AS Total_Campaigns
FROM cleaned_marketing_data
GROUP BY Company
ORDER BY Total_Campaigns DESC;


SELECT COUNT(*)
FROM cleaned_marketing_data;

SELECT COUNT(*) AS Total_Campaigns
FROM  cleaned_marketing_data;

SELECT ROUND(AVG(ROI),2) AS Avg_ROI
FROM cleaned_marketing_data;

SELECT
Channel_Used,
ROUND(AVG(ROI),2) AS Avg_ROI
FROM cleaned_marketing_data
GROUP BY Channel_Used
ORDER BY Avg_ROI DESC;


SELECT
Campaign_Type,
ROUND(AVG(ROI),2) AS Avg_ROI
FROM cleaned_marketing_data
GROUP BY Campaign_Type
ORDER BY Avg_ROI DESC;

SELECT
Customer_Segment,
SUM(Clicks) AS Total_Clicks
FROM cleaned_marketing_data
GROUP BY Customer_Segment
ORDER BY Total_Clicks DESC;

SELECT
Location,
SUM(Clicks) AS Total_Clicks
FROM cleaned_marketing_data
GROUP BY Location
ORDER BY Total_Clicks DESC
LIMIT 10;

SELECT
Month,
ROUND(AVG(ROI),2) AS Avg_ROI
FROM cleaned_marketing_data
GROUP BY Month
ORDER BY Month;