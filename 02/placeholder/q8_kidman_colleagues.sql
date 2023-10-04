SELECT DISTINCT(people.name)
FROM people
    JOIN crew ON crew.person_id = people.person_id
    JOIN titles ON titles.title_id = crew.title_id
WHERE titles.primary_title IN (
        SELECT titles.primary_title
        FROM people
            JOIN crew ON crew.person_id = people.person_id
            JOIN titles ON titles.title_id = crew.title_id
        WHERE people.name = 'Nicole Kidman' AND born=1967
)
ORDER BY people.name ASC;
-- -- Nicole Kidman 的作品
-- SELECT titles.primary_title FROM people
-- JOIN crew ON crew.person_id=people.person_id
-- JOIN titles ON titles.title_id=crew.title_id
-- WHERE people.name='Nicole Kidman';