SELECT TrackId, SUM(UnitPrice)
FROM invoice_items
GROUP BY TrackId
ORDER BY 2 DESC;