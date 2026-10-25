SELECT i.name
FROM instructors AS i
WHERE EXISTS (
    SELECT 1
    FROM courses AS c
    INNER JOIN registrations AS r
        ON r.course_id = c.id
    WHERE c.instructor_id = i.id
)
ORDER BY i.name ASC;