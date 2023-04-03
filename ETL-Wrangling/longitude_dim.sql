

-----------------CITIES DIM ---------------------------------------------

 USE Califonia_Housing

  SELECT  Distinct AVG(cast(LEFT(longitude,7 ) AS FLOAT)) as 'Longitude'
		
		,(case
		
		when  longitude >= -118.2437  and longitude <= -118.1435 THEN 'Los Angeles'

		when  longitude >= -122.75  and longitude <= -122.38 THEN 'San Francisco'

		when  longitude >=  -117.16  and longitude <=  -116.91 THEN 'San Diego'

		when  longitude >= -121.5  and longitude <=  -120.5 THEN 'Sacramento'

		when  longitude >=  -122.08  and longitude <=  -119.63 THEN 'Fresno'

		when  longitude >=  -122.36 and longitude <= -122.20 THEN 'Oakland'

		when  longitude >=  -118.15 and longitude <= -118.05 THEN 'Los Angeles'

		when  longitude >= -117.87  and longitude <= -117.82 THEN 'Santa Ana'

		when  longitude >= -117.91  and longitude <=  -117.77 THEN 'Anaheim'

		else 'OutOfRange'

		END) as 'Cities'

		FROM [stg].[cl_housing_data]
		GROUP BY 	(case
		
		when  longitude >= -118.2437  and longitude <= -118.1435 THEN 'Los Angeles'

		when  longitude >= -122.75  and longitude <= -122.38 THEN 'San Francisco'

		when  longitude >=  -117.16  and longitude <=  -116.91 THEN 'San Diego'

		when  longitude >= -121.5  and longitude <=  -120.5 THEN 'Sacramento'

		when  longitude >=  -122.08  and longitude <=  -119.63 THEN 'Fresno'

		when  longitude >=  -122.36 and longitude <= -122.20 THEN 'Oakland'

		when  longitude >=  -118.15 and longitude <= -118.05 THEN 'Los Angeles'

		when  longitude >= -117.87  and longitude <= -117.82 THEN 'Santa Ana'

		when  longitude >= -117.91  and longitude <=  -117.77 THEN 'Anaheim'

		else 'OutOfRange'

		END)
		Order by Cities asc

-----------------CITIES DIM  ends---------------------------------------------


 USE Califonia_Housing

  SELECT  Distinct cast(LEFT(longitude,7 ) AS FLOAT) as 'Longitude'
		
		,(case
		
		when  longitude >= -118.2437  and longitude <= -118.1435 THEN 'Los Angeles'

		when  longitude >= -122.75  and longitude <= -122.38 THEN 'San Francisco'

		when  longitude >=  -117.16  and longitude <=  -116.91 THEN 'San Diego'

		when  longitude >= -121.5  and longitude <=  -120.5 THEN 'Sacramento'

		when  longitude >=  -122.08  and longitude <=  -119.63 THEN 'Fresno'

		when  longitude >=  -122.36 and longitude <= -122.20 THEN 'Oakland'

		when  longitude >=  -118.15 and longitude <= -118.05 THEN 'Los Angeles'

		when  longitude >= -117.87  and longitude <= -117.82 THEN 'Santa Ana'

		when  longitude >= -117.91  and longitude <=  -117.77 THEN 'Anaheim'

		else 'OutOfRange'

		END) as 'Cities'

		FROM [stg].[cl_housing_data]
		ORDER BY 2