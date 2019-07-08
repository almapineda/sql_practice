SELECT CAST(strftime('%Y', InvoiceDate) AS integer) AS YearOfSale,
       SUM(Total) AS TotalRev,
       SUM(TOTAL) / LAG(SUM(TOTAL)) OVER (ORDER BY MIN(InvoiceDate)) -1 AS PercentDifference
FROM invoices
GROUP BY 1