with 

source as (

    select * from {{ source('bronze', 'patient_info') }}

),

renamed as (

    select
        patient_id,
        sex,
        age,
        country,
        province,
        city,
        infection_case,
        infected_by,
        contact_number,
        symptom_onset_date,
        confirmed_date,
        released_date,
        deceased_date,
        state

    from source

)

select * from renamed
