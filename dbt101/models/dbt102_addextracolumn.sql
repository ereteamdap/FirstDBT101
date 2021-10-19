
{{ config(materialized='table') }}

with source_data as (

    select key,date,new_tested,new_deceased,now() as now from quarantine_covid_  limit 100;

)

select *
from source_data

