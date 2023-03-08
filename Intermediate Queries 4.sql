Select CompanyName From Orders
Join [Order Details]
On Orders.OrderID = [Order Details].OrderID
Join Products 
On [Order Details].ProductID = Products.ProductID
Join Customers
On Orders.CustomerID = Customers.CustomerID
Where ProductName = 'Chai'
And Year(OrderDate) = 1997
And Month(OrderDate) = 6
