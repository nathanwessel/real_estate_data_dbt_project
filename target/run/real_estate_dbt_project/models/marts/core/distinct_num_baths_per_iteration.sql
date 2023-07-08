
  create or replace   view ANALYTICS.DBT_NDW.distinct_num_baths_per_iteration
  
   as (
    -- for this iteration_date, show the count of each distinct number of bathrooms
select distinct iteration_date, num_bathrooms, count(*) as count
from analytics.dbt_ndw.stg_property_sale_listings
group by iteration_date, num_bathrooms
order by iteration_date asc, num_bathrooms asc
  );

