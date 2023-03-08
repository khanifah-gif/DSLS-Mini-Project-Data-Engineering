Select Top 5 ProductName,
SUM(([Order Details].Quantity * [Order Details].UnitPrice) - ([Order Details].Quantity * [Order Details].UnitPrice * Discount)) As TotalSales
From Orders
Join [Order Details] On Orders.OrderID = [Order Details].OrderID
Join Products On [Order Details].ProductID = Products.ProductID
Where Year(Orders.OrderDate) = 1997
Group by ProductName
Order by
SUM(([Order Details].Quantity * [Order Details].UnitPrice) - ([Order Details].Quantity * [Order Details].UnitPrice * Discount)) Desc