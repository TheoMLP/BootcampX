SELECT cohorts.name as cohort_name, COUNT(students.*) as student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING COUNT(students.*) >= 18
ORDER BY student_count, cohort_name;