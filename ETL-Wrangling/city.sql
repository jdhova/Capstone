
 USE Califonia_Housing

  SELECT  Distinct cast(LEFT(longitude,7 ) AS FLOAT) as 'Longitude'	
		,ROW_NUMBER() OVER(ORDER BY longitude) +2000 as 'longitudeID' 
		
		,(case
		
		when  longitude >= -117.76  and longitude <= -117.18 THEN 'Inland Empire and the east LA'

		when  longitude >= -118.99  and longitude <= -118.1435 THEN 'Los Angeles'

		when  longitude >= -122.99  and longitude <= -122.37 THEN 'San Francisco'

		when  longitude >=  -117.16  and longitude <=  -116.91 THEN 'San Diego'

		when  longitude >= -121.5  and longitude <=  -120.5 THEN 'Sacramento'

		when  longitude >=  -122.08  and longitude <=  -119.63 THEN 'Fresno'

		when  longitude >=  -122.37 and longitude <= -122.02 THEN 'Oakland'

		when  longitude >=  -118.15 and longitude <= -118.01 THEN 'Los Angeles'

		when  longitude >= -117.87  and longitude <= -117.82 THEN 'Santa Ana'

		when  longitude >= -117.99  and longitude <=  -117.77 THEN 'Anaheim'

		--when  longitude >= -123.99  and longitude <=  -124.01 THEN 'CA and OR'
		
		when  longitude >= -124.99  and longitude <=  -123.01 THEN 'CA and OR'

		when  longitude >= -114.6  and longitude <=  -114.4  THEN 'Indian Wells'

		when  longitude >= -117.78 and longitude <=  -117.17  THEN 'Orange County'

		when  longitude >= -115.98  and longitude <=  -115.21  THEN 'Clark County CA/NV'

		when  longitude >= -116.99  and longitude <=  -116.01  THEN 'Riverside and San Bernardino County'

		when  longitude >= -119.99   and longitude <=  -119.01  THEN 'Central Valley, and the Eastern California region'

		else 'OutOfRange'

		END) as 'Cities'
         INTO dim.City
		FROM [stg].[cl_housing_data]
		ORDER BY 2
