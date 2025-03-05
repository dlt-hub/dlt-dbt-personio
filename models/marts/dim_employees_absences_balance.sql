/* Table: employees_absences_balance */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.employee_id,
    t.id,
    t.name,
    t.category,
    t.balance,
    t.available_balance,
    t._dlt_load_id,
    t._dlt_id,
    t.balance__v_double,
    t.available_balance__v_double,
FROM  {{ ref('stg_employees_absences_balance') }} as t