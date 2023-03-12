Select Orders.CustomerID, Customers.CompanyName, Categories.CategoryName, Products.ProductName, Orders.ShipCountry,
(([Order Details].UnitPrice * [Order Details].Quantity) - ([Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount)) as Sales,
Format(Orders.OrderDate, 'MM') as Month
From Orders
Join [Order Details] on Orders.OrderID = [Order Details].OrderID
Join Customers on Orders.CustomerID = Customers.CustomerID
Join Products on [Order Details].ProductID = Products.ProductID
Join Categories on Products.CategoryID = Categories.CategoryID
Where year(Orders.OrderDate) = 1997