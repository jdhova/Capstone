

select * 
		,ROW_NUMBER() OVER(ORDER BY longitude) +2000 as 'longitudeID' 
		INTO f.housing_data
from [stg].[cl_housing_data]


