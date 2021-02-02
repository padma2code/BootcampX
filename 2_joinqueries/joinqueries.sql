-----see a list of students and their cohort names.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;
---or we can write like ---SELECT students.name as student_name, email, cohorts.name as cohort_name FROM cohorts JOIN students ON cohort_id = cohorts.id;

---Inner Join---
------rewrite the above query to include the INNER keyword.--
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;
--An INNER JOIN will only give us rows where there is a match between the two tables. Any students with a cohort_id of NULL will not appear in the results of this kind of join.

----Left join----
--This first query will return all students because students is to the LEFT of the word JOIN.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-----Right join---
--This second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

----full outer join---
---this third query will return all rows from both tables, even when there is no match.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

--Query for rollover students--
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;
