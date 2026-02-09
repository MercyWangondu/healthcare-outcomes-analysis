SELECT COUNT(*) FROM patients;
SELECT COUNT(*) FROM encounters;
SELECT COUNT(*) FROM medications;

SELECT readmitted, COUNT(*)
FROM encounters
GROUP BY readmitted;

SELECT AVG(time_in_hospital)
FROM encounters;

