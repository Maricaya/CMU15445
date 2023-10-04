SELECT people.name, count(crew.person_id) AS NUM_APPEARANCES
FROM crew
JOIN people ON crew.person_id=people.person_id
GROUP BY crew.person_id
ORDER BY NUM_APPEARANCES DESC
LIMIT 20;