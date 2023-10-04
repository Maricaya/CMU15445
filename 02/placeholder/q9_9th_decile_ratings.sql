SELECT name,
    avg_rating
FROM(
        SELECT people.name as name,
            (ROUND(AVG(ratings.rating), 2)) AS avg_rating,
            NTILE(10) OVER (
                ORDER BY ROUND(AVG(ratings.rating), 2)
            ) AS rating_quantile
        FROM people
            JOIN crew ON crew.person_id = people.person_id -- JOIN titles ON titles.title_id = crew.title_id
            JOIN ratings ON ratings.title_id = crew.title_id
        WHERE people.born = 1955
        GROUP BY people.name
    )
WHERE rating_quantile = 9
ORDER BY avg_rating DESC,
    name DESC;