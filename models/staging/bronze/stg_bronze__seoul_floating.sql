with 

source as (

    select * from {{ source('bronze', 'seoul_floating') }}

),

renamed as (

    select
        date,
        hour,
        birth_year,
        sex,
        province,
        city,
        fp_num

    from source

)

select * from renamed
