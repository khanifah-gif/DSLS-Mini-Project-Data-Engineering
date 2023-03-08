Select CompanyName From Orders
Join [Order Details]
On Orders.OrderID = [Order Details].OrderID
Join Customers
On Orders.CustomerID = Customers.CustomerID
Where Year(OrderDate) = 1997
Group By CompanyName
Having Sum(Quantity) > 500