with 

source as (

    select * from {{ source('bronze', 'search_trend') }}

),

renamed as (

    select
        date,
        cold,
        flu,
        pneumonia,
        coronavirus

    from source

)

select * from renamed
