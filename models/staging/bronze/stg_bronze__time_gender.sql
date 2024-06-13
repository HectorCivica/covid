with 

source as (

    select * from {{ source('bronze', 'time_gender') }}

),

renamed as (

    select
        date,
        time,
        sex,
        confirmed,
        deceased

    from source

)

select * from renamed
