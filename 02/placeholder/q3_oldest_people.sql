SELECT name,
    CASE WHEN died > 0 THEN died - born ELSE strftime('%Y', 'now') - born END AS age
FROM people
WHERE born > 1900
ORDER BY age DESC, name COLLATE NOCASE
LIMIT 20;