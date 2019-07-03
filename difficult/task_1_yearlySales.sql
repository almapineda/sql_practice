	SELECT CAST(strftime('%Y', InvoiceDate) AS integer) AS YearOfSale, SUM(Total) AS TotalRev
	FROM invoices
	GROUP BY 1