SELECT * FROM blinkit_data

SELECT COUNT(*) FROM blinkit_data

UPDATE blinkit_data 
SET Item_Fat_Content = 
CASE 
WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END

SELECT DISTINCT(Item_Fat_Content) FROM blinkit_data


SELECT CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions
FROM blinkit_data


SELECT CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales FROM blinkit_data


SELECT COUNT(*) AS No_Of_Items FROM blinkit_data 


SELECT CAST(AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating FROM blinkit_data


SELECT Item_Fat_Content, 
		CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC


SELECT Item_Type, 
		CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC



SELECT Outlet_Location_Type,
		ISNULL([Low Fat], 0) AS Low_Fat,
		ISNULL([Regular], 0) AS Regular
FROM
(
	SELECT Outlet_Location_Type,Item_Fat_Content, 
			CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales
	FROM blinkit_data
	GROUP BY Outlet_Location_Type,Item_Fat_Content
) AS SourceTable
PIVOT
(
	SUM(TOtal_Sales)
	FOR Item_Fat_Content IN ([Low Fat],[Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;



SELECT Outlet_Establishment_Year, 
		CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC


SELECT
	Outlet_Size,
	CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales,
	CAST((SUM(sales)*100.0 / SUM(SUM(sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;




SELECT Outlet_Location_Type, 
		CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC


SELECT Outlet_Type, 
		CAST(SUM(sales) As DECIMAL(10,2)) AS Total_Sales,
		CAST((SUM(sales)*100.0 / SUM(SUM(sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage,
		CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC