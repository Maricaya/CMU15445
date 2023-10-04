-- Find the 10 `Sci-Fi` works with the longest runtimes.

-- Print the title of the work, the premiere date, and the runtime. The column listing the runtime should be suffixed with the string " (mins)",

SELECT primary_title, premiered, runtime_minutes || ' (mins)' AS runtime
FROM titles
WHERE genres LIKE '%Sci-Fi%'
ORDER BY runtime_minutes DESC
LIMIT 10;