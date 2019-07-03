WITH albumInfo AS (
	WITH prev AS (
		SELECT TrackId, SUM(UnitPrice) AS TotalRev
		FROM invoice_items
		GROUP BY TrackId
		ORDER BY 2 DESC
	)
	SELECT tracks.AlbumId, prev.TotalRev, SUM(tracks.Milliseconds) AS AlbumLength
	FROM prev
	JOIN tracks
		ON prev.TrackId = tracks.TrackId
	GROUP BY tracks.AlbumId
	ORDER BY 2 DESC
)
SELECT SUM(TotalRev)
FROM albumInfo
WHERE AlbumLength < 2498230;