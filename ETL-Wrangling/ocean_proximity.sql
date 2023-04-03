

 USE Califonia_Housing
    select distinct ocean_proximity
        ,(Case 
        WHEN  ocean_proximity = 'INLAND' THEN 'INLAND'
        WHEN  ocean_proximity = 'NEAR BAY' THEN 'NEAR-BAY'
        WHEN  ocean_proximity = 'NEAR OCEAN' THEN 'NEAR-OCEAN '
        WHEN  ocean_proximity = 'ISLAND'THEN 'ISLAND'
        WHEN  ocean_proximity = '<1H OCEAN' THEN 'LESS_THAN_1H_FROM_OCEAN'
        end )

        FROM [stg].[cl_housing_data]
        ORDER BY 2