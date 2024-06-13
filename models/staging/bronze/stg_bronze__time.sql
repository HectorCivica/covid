with 

source as (

    select * from {{ source('bronze', 'time') }}

),

renamed as (

    select
        date,
        time,
        test,
        negative,
        confirmed,
        released,
        deceased

    from source

)

select * from renamed
