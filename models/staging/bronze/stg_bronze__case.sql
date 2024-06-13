with 

source as (

    select * from {{ source('bronze', 'case') }}

),

renamed as (

    select
        case_id,
        province,
        city,
        grupo,
        infection_case,
        confirmed,
        latitude,
        longitude

    from source

)

select * from renamed
