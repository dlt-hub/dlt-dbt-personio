/* Table: absence_types */
{{
    config(
        materialized='view'
    )
}}
-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'absence_types' */
    id,
    name,
    unit,
    category,
    approval_required,
    id_v2,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'absence_types') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )