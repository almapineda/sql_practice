WITH prev AS (
	SELECT TrackId, SUM(UnitPrice) AS TotalRev
	FROM invoice_items
	GROUP BY TrackId
	ORDER BY 2 DESC
)
SELECT prev.TotalRev, tracks.AlbumId
FROM prev
JOIN tracks
	ON prev.TrackId = tracks.TrackId
GROUP BY tracks.AlbumId
ORDER BY 1 DESC;
