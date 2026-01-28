SELECT c.title AS course_title, i.name AS instructor_name
FROM Courses c
JOIN Instructors i ON c.instructor_id = i.instructor_id;
