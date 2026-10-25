SELECT s.name, c.title
FROM students AS s
INNER JOIN registrations AS r
    ON r.student_id = s.id
INNER JOIN courses AS c
    ON r.course_id = c.id
ORDER BY s.name ASC, c.title ASC;