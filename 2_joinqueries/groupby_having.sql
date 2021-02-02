------GROUP BY-----
---GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.
---Query for all students and their total submissions---
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;

----Alter the above query slightly to only return currently enrolled students---
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;



-----HAVING-------
--HAVING allows us to filter our results based on the result of an aggregate functionq
-----Query for currently enrolled students whose submissions are lessthan 100---
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;

