WITH previous_query AS (
	SELECT TrackId, COUNT(*)
		AS "Count"
	FROM playlist_track
	GROUP BY TrackId
	ORDER BY 2 DESC
)
SELECT tracks.TrackId, previous_query.Count, tracks.name
FROM previous_query
JOIN tracks
	ON previous_query.TrackId = tracks.TrackId;