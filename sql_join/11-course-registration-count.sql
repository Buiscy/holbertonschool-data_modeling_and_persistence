SELECT c.title, COUNT(r.course_id)
FROM courses AS c
LEFT JOIN registrations AS r
    ON r.course_id = c.id
GROUP BY c.id, c.title
ORDER BY COUNT(r.course_id) DESC, c.title ASC;