select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    _AIRBYTE_PROPERTY_SALE_LISTINGS_HASHID as unique_field,
    count(*) as n_records

from raw.realty_mole_property_api.property_sale_listings
where _AIRBYTE_PROPERTY_SALE_LISTINGS_HASHID is not null
group by _AIRBYTE_PROPERTY_SALE_LISTINGS_HASHID
having count(*) > 1



      
    ) dbt_internal_test