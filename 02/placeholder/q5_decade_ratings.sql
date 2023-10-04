SELECT (titles.premiered / 10 * 10) ||'s' AS decade_range,
     ROUND(AVG(ratings.rating), 2) AS avg_rating,
     COUNT(titles.premiered),
     MAX(ratings.rating),
     MIN(ratings.rating),
     COUNT(titles.title_id)
FROM titles
JOIN ratings ON titles.title_id=ratings.title_id
GROUP BY decade_range
ORDER BY
    avg_rating DESC,
    decade_range ASC;
