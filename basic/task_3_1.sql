WITH prev AS (
	SELECT InvoiceId, SUM(UnitPrice) AS TotalRev
	FROM invoice_items
	GROUP BY InvoiceId
)
SELECT invoices.BillingCountry, prev.TotalRev
FROM prev
JOIN invoices
	ON invoices.InvoiceId = prev.InvoiceId
GROUP BY invoices.BillingCountry
ORDER BY 2 DESC;