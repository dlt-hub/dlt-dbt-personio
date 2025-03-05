/* Table: projects */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.name,
    t.active,
    t.created_at,
    t.updated_at,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_projects') }} as t