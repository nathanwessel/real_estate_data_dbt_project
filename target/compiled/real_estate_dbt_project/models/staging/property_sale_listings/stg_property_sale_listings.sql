-- change this to select just the columns
-- you are interested in (done), and convert the timestamp to a date (done)
-- select distinct _AIRBYTE_EMITTED_AT, _AIRBYTE_PROPERTY_SALE_LISTINGS_HASHID,
-- other columns.
-- - after that is working, do the surrogate key stuff in the model (done)
-- - then add definitions and tests to the silver model (done)
-- - START BACK HERE: then make a gold table
-- - then call it done
-- then add a rentals stream
-- then add a silver and gold table for that
-- then create a simple streamlit app that shows the end table
-- then add it to linkedin
-- then call it done

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