SELECT COUNT(customers.CustomerId), employees.EmployeeId
FROM employees
JOIN customers
	ON employees.EmployeeId = customers.SupportRepId
GROUP BY 2;