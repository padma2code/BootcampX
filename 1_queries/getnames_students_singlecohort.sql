----to get all student id,names from single cohort ----
SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;