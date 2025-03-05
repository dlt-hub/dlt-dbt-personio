/* Table: absences */
{{
    config(
        materialized='view'
    )
}}
-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'absences' */
    id,
    status,
    comment,
    start_date,
    end_date,
    days_count,
    half_day_start,
    half_day_end,
    time_off_type__type,
    time_off_type__attributes__id,
    time_off_type__attributes__name,
    time_off_type__attributes__category,
    employee__type,
    employee__attributes__id__label,
    employee__attributes__id__value,
    employee__attributes__id__type,
    employee__attributes__id__universal_id,
    employee__attributes__first_name__label,
    employee__attributes__first_name__value,
    employee__attributes__first_name__type,
    employee__attributes__first_name__universal_id,
    employee__attributes__last_name__label,
    employee__attributes__last_name__value,
    employee__attributes__last_name__type,
    employee__attributes__last_name__universal_id,
    employee__attributes__email__label,
    employee__attributes__email__value,
    employee__attributes__email__type,
    employee__attributes__email__universal_id,
    created_by,
    certificate__status,
    created_at,
    updated_at,
    id_v2,
    _dlt_load_id,
    _dlt_id,
    days_count__v_double,
FROM {{ source('raw_data', 'absences') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )