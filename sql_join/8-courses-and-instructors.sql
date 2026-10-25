SELECT c.title, i.name
FROM courses AS c
INNER JOIN instructors AS i
    ON c.instructor_id = i.id
ORDER BY c.title ASC;