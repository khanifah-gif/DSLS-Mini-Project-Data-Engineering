Create View OrderDetails
As
Select Orders.OrderID, Products.ProductID,
Products.ProductName, [Order Details].UnitPrice,
[Order Details].Quantity, [Order Details].Discount,
([Order Details].UnitPrice * [Order Details].Quantity) - ([Order Details].UnitPrice * [Order Details].Quantity*[Order Details].Discount)
As HargaDisc
From Orders
Join [Order Details]
On Orders.OrderID = [Order Details].OrderID
Join Products
On [Order Details].ProductID = Products.ProductID