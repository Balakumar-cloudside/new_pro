with
{{config(materialized='ephemeral')}}

inter_survey as (
SELECT
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey02'), except=["id"]) }},
     {{ dbt_utils.star(from=ref('stg_annual_enterprise_survey01'), except=["id"]) }}
        
FROM
     {{ ref('stg_annual_enterprise_survey01') }} AS t2
RIGHT JOIN
     {{ ref('stg_annual_enterprise_survey02') }} AS t1
ON
    t2.id = t1.id
)

Select * from inter_survey
