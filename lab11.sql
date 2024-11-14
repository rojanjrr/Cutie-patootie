-- Query to display all records from the course table

--title and due_date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id= 'COMP1234';

--earliest assignment due date
SELECT min(due_date) as earliest_due_date
FROM assignments;

--latest assignment due date
SELECT max(due_date) as latest_due_date
FROM assignments;

--title and course_id of assignments due on 2024-10-08
SELECT course_id, title
from assignments
where due_date = '2024-10-08';

--all assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%';

--most recent due_date of assignments with status "completed"
SELECT max(due_date) as most_recent_completed
from assignments
WHERE status = 'Completed';

