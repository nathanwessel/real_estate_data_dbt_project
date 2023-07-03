
  create or replace   view ANALYTICS.DBT_NDW.stg_property_sale_listings
  
   as (
    select * from raw.realty_mole_property_api.property_sale_listings
  );

