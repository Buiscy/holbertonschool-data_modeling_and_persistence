SELECT i.name, c.title
FROM instructors AS i
LEFT JOIN courses AS c
    ON c.instructor_id = i.id
ORDER BY i.name ASC, c.title ASC;