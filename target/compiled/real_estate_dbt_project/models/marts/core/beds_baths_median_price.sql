-- for this number of beds/baths and iteration_date, show the median price
select distinct num_bedrooms, num_bathrooms, iteration_date, median(price) as median_price
from analytics.dbt_ndw.stg_property_sale_listings
group by num_bedrooms, num_bathrooms, iteration_date
order by num_bedrooms asc, num_bathrooms asc, iteration_date asc