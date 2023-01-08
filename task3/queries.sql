--LESSONS PER MONTH IN A SPECIFIED YEAR 
-------------------------------------------------------------

DROP VIEW IF EXISTS months, individual_l_per_month, group_l_per_month, ensembles_per_month;

CREATE VIEW months as
SELECT * FROM generate_series(1,12) as month;

CREATE VIEW individual_l_per_month as
SELECT month, count(month) as count FROM
	(SELECT EXTRACT(month FROM time) as month FROM individual_lesson
	WHERE EXTRACT(year FROM time) = 2022) as il_month
GROUP BY MONTH;

CREATE VIEW group_l_per_month as
SELECT month, count(month) as count FROM
	(SELECT EXTRACT(month FROM time) as month FROM group_lesson
	WHERE EXTRACT(year FROM time) = 2022) as gl_month
GROUP BY MONTH;

CREATE VIEW ensembles_per_month as
SELECT month, count(month) as count FROM
	(SELECT EXTRACT(month FROM time) as month FROM ensemble
	WHERE EXTRACT(year FROM time) = 2022) as e_month
GROUP BY MONTH;

SELECT months.month,
coalesce(individual_l_per_month.count, 0) as individual_lessons,
coalesce(group_l_per_month.count, 0) as group_lessons,
coalesce(ensembles_per_month.count,0) as ensembles,
coalesce(individual_l_per_month.count, 0) + coalesce(group_l_per_month.count, 0) + coalesce(ensembles_per_month.count, 0) as total
FROM months
FULL OUTER JOIN group_l_per_month ON months.month = group_l_per_month.month
FULL OUTER JOIN ensembles_per_month ON months.month = ensembles_per_month.month
FULL OUTER JOIN individual_l_per_month ON months.month = individual_l_per_month.month;




--TOTAL LESSONS DURING A MONTH FOR AN INSTRUCTOR 
-------------------------------------------------------------

SELECT instructor_id, person.name, COUNT(*) as lessons FROM (
	SELECT instructor_id, time FROM individual_lesson
	UNION ALL
	SELECT instructor_id, time FROM ensemble
	UNION ALL
	SELECT instructor_id, time FROM group_lesson) as lesson_list
	INNER JOIN instructor ON instructor.id = lesson_list.instructor_id
	INNER JOIN person ON person.id = instructor.person_id
	WHERE EXTRACT(month FROM time) = EXTRACT(month FROM current_date)
	AND EXTRACT(year FROM time) = EXTRACT(year FROM current_date)
	GROUP BY instructor_id, person.name
	HAVING COUNT(*) > 1
	ORDER BY lessons DESC;
	


--SIBLING COUNT
 ------------------------------------------------------

 SELECT count as num_of_siblings, COUNT(*) as amount_of_students FROM
 	(SELECT student_id, COUNT(*) FROM siblings
	GROUP BY student_id) as siblings_per_student
	GROUP BY count
	UNION
	(SELECT 0 as num_of_siblings, COUNT(*)
	FROM student
	WHERE student.id NOT IN (SELECT student_id FROM siblings))
	ORDER BY num_of_siblings ASC;


--ALL ENSEMBLES HELD THE CURRENT WEEK 
 ----------------------------------------------------
SELECT id,
genre,
CASE
WHEN day=1 THEN 'Monday'
WHEN day=2 THEN 'Tuesday'
WHEN day=3 THEN 'Wednesday'
WHEN day=4 THEN 'Thursday'
WHEN day=5 THEN 'Friday'
WHEN day=6 THEN 'Saturday'
WHEN day=7 THEN 'Sunday'
ELSE 'X'
END
as day,
CASE
WHEN places-enrolled=0 THEN 'Full'
WHEN places-enrolled<=2 THEN '1-2 places left'
ELSE '>2 places left'
END as places_left
FROM(
SELECT e.id, EXTRACT(dow FROM e.time) as day, e.maximum_students as places, e.genre, COUNT(enrolled_students_ensemble.student_id) as enrolled
FROM ensemble as e
LEFT JOIN enrolled_students_ensemble
ON id = enrolled_students_ensemble.ensemble_id
WHERE EXTRACT(year FROM e.time) = EXTRACT(year FROM current_date)
AND DATE_PART('week', e.time) = DATE_PART('week', current_date + INTERVAL '7 days')
GROUP BY e.id, e.genre
) as ensemble_info
ORDER BY genre, day;
