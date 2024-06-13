with 

source as (

    select * from {{ source('bronze', 'time_age') }}

),

renamed as (

    select
        date,
        time,
        age,
        confirmed,
        deceased

    from source

)

select * from renamed
