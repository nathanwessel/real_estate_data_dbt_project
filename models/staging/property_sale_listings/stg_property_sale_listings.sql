select * from {{ source('realty_mole_property_api', 'property_sale_listings') }}