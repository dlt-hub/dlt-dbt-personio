/* Table: employees */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.first_name,
    t.last_name,
    t.preferred_name,
    t.email,
    t.gender,
    t.status,
    t.position,
    t.employment_type,
    t.weekly_working_hours,
    t.termination_type,
    t.termination_reason,
    t.created_at,
    t.last_modified_at,
    t.holiday_calendar__type,
    t.holiday_calendar__attributes__id,
    t.holiday_calendar__attributes__name,
    t.holiday_calendar__attributes__country,
    t.work_schedule__type,
    t.work_schedule__attributes__id,
    t.work_schedule__attributes__name,
    t.work_schedule__attributes__monday,
    t.work_schedule__attributes__tuesday,
    t.work_schedule__attributes__wednesday,
    t.work_schedule__attributes__thursday,
    t.work_schedule__attributes__friday,
    t.work_schedule__attributes__saturday,
    t.work_schedule__attributes__sunday,
    t.fix_salary,
    t.fix_salary_interval,
    t.hourly_salary,
    t.national_insurance_number,
    t.holder_of_bank_account,
    t.emergency_contact_name,
    t.address,
    t.key_number_id,
    t.type_of_visa,
    t.iban,
    t.emergency_contact_phone_number,
    t.marital_status,
    t.city,
    t.laptop_serial_number,
    t.trainings,
    t.employee_id,
    t.type_of_health_insurance,
    t.bic,
    t.postcode,
    t.emergency_contact_relationship_to_the_employee,
    t.language_skills,
    t.name_of_health_insurance,
    t.personal_email,
    t.linkedin,
    t.first_aider,
    t.main_or_secondary_occupation,
    t.child_allowance,
    t.nationality,
    t.salary_type,
    t.notice_period,
    t.occupation_type,
    t.project_manager,
    t.mentor,
    t._dlt_load_id,
    t._dlt_id,
    t.supervisor__type,
    t.supervisor__attributes__id__label,
    t.supervisor__attributes__id__value,
    t.supervisor__attributes__id__type,
    t.supervisor__attributes__id__universal_id,
    t.supervisor__attributes__first_name__label,
    t.supervisor__attributes__first_name__value,
    t.supervisor__attributes__first_name__type,
    t.supervisor__attributes__first_name__universal_id,
    t.supervisor__attributes__last_name__label,
    t.supervisor__attributes__last_name__value,
    t.supervisor__attributes__last_name__type,
    t.supervisor__attributes__last_name__universal_id,
    t.supervisor__attributes__preferred_name__label,
    t.supervisor__attributes__preferred_name__value,
    t.supervisor__attributes__preferred_name__type,
    t.supervisor__attributes__preferred_name__universal_id,
    t.supervisor__attributes__email__label,
    t.supervisor__attributes__email__value,
    t.supervisor__attributes__email__type,
    t.supervisor__attributes__email__universal_id,
    t.hire_date,
    t.probation_period_end,
    t.subcompany__type,
    t.subcompany__attributes__id,
    t.subcompany__attributes__name,
    t.office__type,
    t.office__attributes__id,
    t.office__attributes__name,
    t.department__type,
    t.department__attributes__id,
    t.department__attributes__name,
    t.work_schedule__attributes__valid_from,
    t.profile_picture,
    t.team__type,
    t.team__attributes__id,
    t.team__attributes__name,
    t.date_of_birth,
    t.contract_end_date,
    t.visa_expiry_date,
FROM  {{ ref('stg_employees') }} as t