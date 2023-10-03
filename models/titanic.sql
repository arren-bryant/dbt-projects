with titanic as (

    select * from {{ ref('stg_titanic') }}

)

select passengerid,
       survived,
       pclass,
       name,
       case 
        when sex = 'male' then 'Male' 
        when sex = 'female' then 'Female'
        else 'Unknown'
       end as sex,
       cast(age as int) as age
from titanic