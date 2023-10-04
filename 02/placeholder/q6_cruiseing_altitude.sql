SELECT titles.primary_title, ratings.votes
FROM people
JOIN crew ON crew.person_id=people.person_id
JOIN titles ON titles.title_id=crew.title_id
JOIN ratings ON ratings.title_id=titles.title_id
WHERE
    people.name LIKE '%Cruise%'
    AND people.born=1962
ORDER BY
    ratings.votes DESC
LIMIT 10;