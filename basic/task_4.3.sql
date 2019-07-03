WITH orders AS (
	SELECT invoices.InvoiceId, invoices.CustomerId, SUM(invoices.Total) AS InvoiceSum, customers.SupportRepId
	FROM invoices
	JOIN customers
		ON invoices.CustomerId = customers.CustomerId
	GROUP BY 1
)
SELECT employees.EmployeeId, SUM(orders.InvoiceSum) AS AverageRev
FROM orders
JOIN employees
	ON orders.SupportRepId = employees.EmployeeId
GROUP BY employees.EmployeeId;