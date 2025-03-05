/* Table: employees__absence_entitlement */
/* Parent: employees */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.type,
    t.attributes__id,
    t.attributes__name,
    t.attributes__category,
    t.attributes__entitlement,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_employees__absence_entitlement') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_employees') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)