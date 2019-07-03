WITH albumLengths AS (
	WITH prev AS (
		SELECT TrackId, SUM(UnitPrice) AS TotalRev
		FROM invoice_items
		GROUP BY TrackId
		ORDER BY 2 DESC
	)
	SELECT SUM(tracks.Milliseconds) AS AlbumLength
	FROM prev
	JOIN tracks
		ON prev.TrackId = tracks.TrackId
	GROUP BY tracks.AlbumId
)
SELECT AVG(albumLengths.AlbumLength) AS AverageLength
FROM albumLengths;