WITH prev AS (
	SELECT TrackId, SUM(UnitPrice) AS 'TotalRevenue'
	FROM invoice_items
	GROUP BY TrackId
	ORDER BY 2 DESC
)
SELECT prev.TotalRevenue, tracks.GenreId
FROM prev
JOIN tracks
	ON prev.TrackId = tracks.TrackId
GROUP BY tracks.GenreId
ORDER BY prev.TotalRevenue DESC;