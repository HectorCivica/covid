with 

source as (

    select * from {{ source('bronze', 'weather') }}

),

renamed as (

    select
        code,
        province,
        date,
        avg_temp,
        min_temp,
        max_temp,
        precipitation,
        max_wind_speed,
        most_wind_direction,
        avg_relative_humidity

    from source

)

select * from renamed
