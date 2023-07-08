
  create or replace   view ANALYTICS.DBT_NDW.stg_property_sale_listings
  
   as (
    select date(_airbyte_emitted_at)||'_'||id as addr_iteration_date_id,
-- convert timestamp to date
-- iteration_date: the day this data was ingested into the raw database schema
date(_airbyte_emitted_at) as iteration_date,
-- address of the home in id form
id,
-- convert timestamp to date
date(listeddate) as listed_date,
formattedaddress as formatted_address,
bathrooms as num_bathrooms,
bedrooms as num_bedrooms,
daysonmarket as days_on_market,
price

from raw.realty_mole_property_api.property_sale_listings
  );

