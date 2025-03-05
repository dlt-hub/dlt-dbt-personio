/* Table: absence_types */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.name,
    t.unit,
    t.category,
    t.approval_required,
    t.id_v2,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_absence_types') }} as t