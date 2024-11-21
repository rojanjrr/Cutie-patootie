--Upcoming assiassignments
SELECT *
FROM assignments
WHERE due_date > DATE(2024-12-31);

--Count Assignments by Status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

--Longest course Name
SELECT MAX(LENGTH(course_name)) AS max_length
FROM courses;

SELECT course_id, course_name
FROM courses
WHERE LENGTH(course_name) = (
  SELECT MAX(LENGTH(course_name))
  FROM courses
);

--Uppercase Course Names 
SELECT UPPER(course_name) AS uppercase_name
FROM courses;

--Assignments due in september 
SELECT title
FROM assignments
WHERE due_date;

--Assignments with missing due dates
SELECT *
FROM assignments
WHERE due_date IS NULL;

--concatenate course name and semester 
SELECT CONCAT(course_name, ' - ', semester) AS course_details
FROM courses;

--courses with labs on fridays
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';
