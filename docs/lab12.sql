-- Concatenate Course Name and Semester
SELECT CONCAT(course_name, ' - ', semester) AS courses
FROM courses;

-- Courses with Labs on Fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

-- Upcoming Assignments
SELECT due_date
FROM assignments
WHERE due_date > CURRENT_DATE

-- Count Assignments by Status
SELECT status, COUNT (*) as assignment_count
FROM assignments
GROUP BY status

-- Longest Course Name
SELECT course_name
FROM courses
order by length(course_name) DESC
LIMIT 1

-- Uppercase Course Names
SELECT upper(course_name)
FROM courses

-- Assignments Due in September
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

-- Assignments with Missing Due Dates
SELECT *
FROM assignments
WHERE due_date ISNULL;
