{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim__dlt_loads') }}
-- depends_on: {{ ref('dim_absence_types') }}
-- depends_on: {{ ref('dim_absences') }}
-- depends_on: {{ ref('dim_projects') }}
-- depends_on: {{ ref('dim_document_categories') }}
-- depends_on: {{ ref('dim_employees_absences_balance') }}
-- depends_on: {{ ref('dim_employees') }}
-- depends_on: {{ ref('dim_employees__absence_entitlement') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('dlt_active_load_ids') }}