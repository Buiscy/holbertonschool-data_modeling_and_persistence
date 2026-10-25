SELECT c.title, a.title
FROM courses AS c
LEFT JOIN assignments AS a
    ON a.course_id = c.id
ORDER BY c.title ASC, a.title ASC;