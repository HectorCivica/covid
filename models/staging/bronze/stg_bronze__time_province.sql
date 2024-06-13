with 

source as (

    select * from {{ source('bronze', 'time_province') }}

),

renamed as (

    select
        date,
        time,
        province,
        confirmed,
        released,
        deceased

    from source

)

select * from renamed
