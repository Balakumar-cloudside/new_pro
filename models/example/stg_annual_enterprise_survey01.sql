WITH
survey AS (
SELECT * FROM `lyrical-medley-398809.airbyte_withdbt.annual_enterprise_survey01`),

n AS ( 
SELECT 
    id,
    year AS Year,
    industry_code_ANZSIC AS Industry_code,
    industry_name_ANZSIC AS Industry_name,
    rme_size_grp AS Size_group,
    variable AS Variable,
    unit AS Units
FROM survey
)

SELECT * FROM n
