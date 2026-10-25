SELECT c.title
FROM courses AS c
LEFT JOIN assignments AS a
    ON a.course_id = c.id
GROUP BY c.id, c.title
HAVING COUNT(a.course_id) > (
    SELECT AVG(course_counts.assignment_count)
    FROM (
        SELECT COUNT(a2.course_id) AS assignment_count
        FROM courses AS c2
        LEFT JOIN assignments AS a2
            ON a2.course_id = c2.id
        GROUP BY c2.id
    ) AS course_counts
)
ORDER BY c.title ASC;