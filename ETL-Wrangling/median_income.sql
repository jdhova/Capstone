

USE Califonia_Housing
    select AVG(round(cast(median_income as money),1))
        ,( case 
            WHEN median_income >= 0.00 AND median_income <= 1.99 THEN 'LOW_INCOME'
            WHEN median_income >= 1.99 AND median_income <= 4.99 THEN 'MIDDLE_INCOME'
            WHEN median_income >= 4.99 AND median_income <= 8.99 THEN 'HIGH_INCOME'
            ELSE  'WHELTHY'
        END) AS 'MEDIAN_INCOME_AVERAGE'

    FROM [stg].[cl_housing_data]
    GROUP BY ( case 
            WHEN median_income >= 0.00 AND median_income <= 1.99 THEN 'LOW_INCOME'
            WHEN median_income >= 1.99 AND median_income <= 4.99 THEN 'MIDDLE_INCOME'
            WHEN median_income >= 4.99 AND median_income <= 8.99 THEN 'HIGH_INCOME'
            ELSE  'WHELTHY'
        END)
    ORDER BY 2 DESC

-----------------------------------------------------------------------------------------------------------------------------

USE Califonia_Housing

   select distinct round(cast(median_income as money),3) as 'Median_Income'
			,(
			Case
				WHEN median_income >= 0.00 AND median_income <= 1.999 THEN 'Low_Income'
				WHEN median_income >= 2.000 AND median_income <= 4.999 THEN 'Middle_Income'
				WHEN median_income >= 5.000 AND median_income <= 8.999 THEN 'High_Income'
				WHEN median_income > 9.00 THEN 'Wealthy'
				else 'Outliars'
        END) AS 'Median_Income_Range'
		INTO dim.median_income
    FROM [stg].[cl_housing_data]
    ORDER BY 1 DESC

