WITH
survey AS (
SELECT * FROM `lyrical-medley-398809.airbyte_withdbt.annual_enterprise_survey01`),

ae AS ( 
SELECT 
    id,
    value,
    Industry_aggregation_NZSIOC,
    Variable_category
FROM survey
)

SELECT * FROM ae
