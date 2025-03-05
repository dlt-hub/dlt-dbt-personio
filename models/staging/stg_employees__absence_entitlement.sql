/* Table: employees__absence_entitlement */
/* Parent: { parent }} */
{{
    config(
        materialized='view'
    )
}}
-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_employees') }}

SELECT
/* select which columns will be available for table 'employees__absence_entitlement' */
    type,
    attributes__id,
    attributes__name,
    attributes__category,
    attributes__entitlement,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'employees__absence_entitlement') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_employees') }} )
