

 USE Califonia_Housing

    select distinct ocean_proximity
        ,(Case 
        WHEN  ocean_proximity = 'INLAND' THEN 'Inland'
        WHEN  ocean_proximity = 'NEAR BAY' THEN 'Near_Bay'
        WHEN  ocean_proximity = 'NEAR OCEAN' THEN 'Near_Ocean '
        WHEN  ocean_proximity = 'ISLAND'THEN 'Island'
        WHEN  ocean_proximity = '<1H OCEAN' THEN 'Less_Than_1h_From_Ocean'
        end ) as 'House_Proximity'
       -- INTO dim.ocean_proximity

        FROM [stg].[cl_housing_data]
        ORDER BY 2