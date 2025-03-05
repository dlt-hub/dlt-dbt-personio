/* Table: employees_absences_balance */
{{
    config(
        materialized='view'
    )
}}
-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'employees_absences_balance' */
    employee_id,
    id,
    name,
    category,
    balance,
    available_balance,
    _dlt_load_id,
    _dlt_id,
    balance__v_double,
    available_balance__v_double,
FROM {{ source('raw_data', 'employees_absences_balance') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )