Select
	Orders.CustomerID,
	Orders.OrderDate,
	ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) as OrderNumber,
		CASE
			WHEN ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) = 1
			THEN MIN(Orders.OrderDate) OVER (PARTITION BY Orders.CustomerID)
			ELSE MIN(Orders.OrderDate) OVER (PARTITION BY Orders.CustomerID)
		END As JoinDate,
	FORMAT((MIN(Orders.OrderDate) OVER (PARTITION BY Orders.CustomerID)) , 'MM-yyyy') AS Cohorts,
	DATEDIFF(month, MIN(Orders.OrderDate) OVER (PARTITION BY Orders.CustomerID), Orders.OrderDate) AS AgeByMonth
FROM Orders
WHERE year(Orders.OrderDate) = 1997
Order By Orders.CustomerID Asc

