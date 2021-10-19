
-- Use the `ref` function to select from other models

select *
from {{ ref('dbt102_addextracolumn') }}
where new_tested <> 'NaN'
