{{
    codegen.generate_source(
        schema_name = 'BRONZE',
        database_name = 'ALUMNO13_COVID',
        table_names = ['CASE','PATIENT_INFO','POLICY','REGION','SEARCH_TREND','SEOUL_FLOATING','TIME','TIME_AGE','TIME_GENDER','TIME_PROVINCE','WEATHER'],
        generate_columns = True,
        include_descriptions=True,
        include_data_types=True,
        
        )
}}