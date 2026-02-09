INSERT INTO patients (
    patient_nbr,
    race,
    gender,
    age_group,
    weight
)
SELECT
    patient_nbr,
    MAX(race),
    MAX(gender),
    MAX(age),
    MAX(weight)
FROM staging_diabetes
GROUP BY patient_nbr;


