WITH CTE AS 
(
    SELECT *, ROW_NUMBER() OVER(ORDER BY visit_date) as row_num
    FROM (SELECT * FROM Stadium WHERE people >=100) sub
)
SELECT id, visit_date, people
FROM 
    Stadium,
    (SELECT MIN(ID) m, MAX(id) n FROM CTE GROUP BY id-row_num HAVING COUNT(id-row_num) >= 3) sub
WHERE id BETWEEN m AND n;