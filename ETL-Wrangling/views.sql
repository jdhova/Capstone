

    select *
    from [stg].[cl_housing_data] h
    inner join [dim].[median_income] inc
    on h.median_income = inc.median_income
    inner join [dim].[No_Of_Bedrooms] bed
    on h.total_bedrooms = bed.total_bedrooms
    inner join  [dim].[ocean_proximity] oc
    on h.ocean_proximity = oc.ocean_proximity
    inner join [dim].[Cities] c
    on h.longitude = c.longitude



    select  inc.Median_Income_Range
            ,bed.No_Of_Bedrooms
            ,oc.home_proximity
            ,c.Cities
            ,h.median_house_value
    from [stg].[cl_housing_data] h
    inner join [dim].[median_income] inc
    on h.median_income = inc.median_income
    inner join [dim].[No_Of_Bedrooms] bed
    on h.total_bedrooms = bed.total_bedrooms
    inner join  [dim].[ocean_proximity] oc
    on h.ocean_proximity = oc.ocean_proximity
    inner join [dim].[Cities] c
    on h.longitude = c.longitude



__-----------------------------------------------------------------------------------------------------------------

--FINAL VIEW WITH 788 ROWS



CREATE OR ALTER VIEW vw.housing_view
 AS
	select  inc.Median_Income_Range
            ,bed.No_Of_Bedrooms
            ,oc.home_proximity
           ,c.Cities
            ,h.median_house_value
    from [f].[housing_data] h
    inner join [dim].[median_income] inc
    on h.median_income = inc.median_income
    inner join [dim].[No_Of_Bedrooms] bed
    on h.total_bedrooms = bed.total_bedrooms
    inner join  [dim].[ocean_proximity] oc
    on h.ocean_proximity = oc.ocean_proximity
    inner join [dim].[City] c
    on h.longitudeID = c.longitudeID






--     Income and value
-- near beach and value 
-- cities and value
-- median income and value