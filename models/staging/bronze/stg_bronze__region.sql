with 

source as (

    select * from {{ source('bronze', 'region') }}

),

renamed as (

    select
        code,
        province,
        city,
        latitude,
        longitude,
        elementary_school_count,
        kindergarten_count,
        university_count,
        academy_ratio,
        elderly_population_ratio,
        elderly_alone_ratio,
        nursing_home_count

    from source

)

select * from renamed
