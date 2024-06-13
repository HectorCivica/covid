with 

source as (

    select * from {{ source('bronze', 'policy') }}

),

renamed as (

    select
        policy_id,
        country,
        type,
        gov_policy,
        detail,
        start_date,
        end_date

    from source

)

select * from renamed
