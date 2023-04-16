


 USE Califonia_Housing

    select distinct total_bedrooms
            ,( case 
                WHEN total_bedrooms >= 0.00 AND total_bedrooms <= 199 THEN 'One_Bedoom_House'
                WHEN total_bedrooms >= 200 AND total_bedrooms <= 449 THEN 'Two_Bedoom_House'
                WHEN total_bedrooms >= 450 AND total_bedrooms <= 699 THEN 'Three_Bedoom_House'
                WHEN total_bedrooms >= 700 AND total_bedrooms <= 949 THEN 'Four_Bedoom_House'
                WHEN total_bedrooms >= 950 AND total_bedrooms <= 1170 THEN 'Five_Bedoom_House'
                ELSE  'Mansion'
            END) AS 'No_Of_Bedrooms'
        --	INTO dim.No_Of_Bedrooms
        FROM [stg].[cl_housing_data]
        order by 2 desc


 --------------------------------------------------------------------------------------------------------------------   

USE Califonia_Housing

    -- select avg(total_bedrooms)
    --     ,( case 
    --         WHEN total_bedrooms >= 0.00 AND total_bedrooms <= 199 THEN 'One_Bedoom_House'
    --         WHEN total_bedrooms >= 200 AND total_bedrooms <= 449 THEN 'Two_Bedoom_House'
    --         WHEN total_bedrooms >= 450 AND total_bedrooms <= 699 THEN 'Three_Bedoom_House'
    --         WHEN total_bedrooms >= 700 AND total_bedrooms <= 949 THEN 'Four_Bedoom_House'
    --         WHEN total_bedrooms >= 950 AND total_bedrooms <= 1170 THEN 'Five_Bedoom_House'
    --         ELSE  'Mansion'
    --     END) AS 'No_Of_Bedrooms'

    -- FROM [stg].[cl_housing_data]
    -- group by ( case 
    --         WHEN total_bedrooms >= 0.00 AND total_bedrooms <= 199 THEN 'One_Bedoom_House'
    --         WHEN total_bedrooms >= 200 AND total_bedrooms <= 449 THEN 'Two_Bedoom_House'
    --         WHEN total_bedrooms >= 450 AND total_bedrooms <= 699 THEN 'Three_Bedoom_House'
    --         WHEN total_bedrooms >= 700 AND total_bedrooms <= 949 THEN 'Four_Bedoom_House'
    --         WHEN total_bedrooms >= 950 AND total_bedrooms <= 1170 THEN 'Five_Bedoom_House'
    --         ELSE  'Mansion'
    --     END) 
    -- order by 2 desc
