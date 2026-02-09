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


INSERT INTO encounters (
    encounter_id,
    patient_id,
    admission_type_id,
    discharge_disposition_id,
    admission_source_id,
    time_in_hospital,
    payer_code,
    medical_specialty,
    num_lab_procedures,
    num_procedures,
    num_medications,
    number_outpatient,
    number_emergency,
    number_inpatient,
    diag_1,
    diag_2,
    diag_3,
    number_diagnoses,
    max_glu_serum,
    a1cresult,
    change,
    diabetesmed,
    readmitted
)
SELECT
    s.encounter_id,
    p.patient_id,
    s.admission_type_id,
    s.discharge_disposition_id,
    s.admission_source_id,
    s.time_in_hospital,
    s.payer_code,
    s.medical_specialty,
    s.num_lab_procedures,
    s.num_procedures,
    s.num_medications,
    s.number_outpatient,
    s.number_emergency,
    s.number_inpatient,
    s.diag_1,
    s.diag_2,
    s.diag_3,
    s.number_diagnoses,
    s.max_glu_serum,
    s.A1Cresult,
    s.change,
    s.diabetesMed,
    s.readmitted
FROM staging_diabetes s
JOIN patients p
ON s.patient_nbr = p.patient_nbr;

INSERT INTO medications (
    encounter_id,
    metformin,
    repaglinide,
    nateglinide,
    chlorpropamide,
    glimepiride,
    acetohexamide,
    glipizide,
    glyburide,
    tolbutamide,
    pioglitazone,
    rosiglitazone,
    acarbose,
    miglitol,
    troglitazone,
    tolazamide,
    examide,
    citoglipton,
    insulin,
    glyburide_metformin,
    glipizide_metformin,
    glimepiride_pioglitazone,
    metformin_rosiglitazone,
    metformin_pioglitazone
)
SELECT
    encounter_id,
    metformin,
    repaglinide,
    nateglinide,
    chlorpropamide,
    glimepiride,
    acetohexamide,
    glipizide,
    glyburide,
    tolbutamide,
    pioglitazone,
    rosiglitazone,
    acarbose,
    miglitol,
    troglitazone,
    tolazamide,
    examide,
    citoglipton,
    insulin,
    glyburide_metformin,
    glipizide_metformin,
    glimepiride_pioglitazone,
    metformin_rosiglitazone,
    metformin_pioglitazone
FROM staging_diabetes;

