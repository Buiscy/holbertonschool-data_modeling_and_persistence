SELECT s.name
FROM students AS s
WHERE EXISTS (
    SELECT 1
    FROM registrations AS r
    WHERE r.student_id = s.id
)
ORDER BY s.name ASC;