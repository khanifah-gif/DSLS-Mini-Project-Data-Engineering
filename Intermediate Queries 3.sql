Select ProductName, SUM(Quantity) As Jumlah
From Orders
Join [Order Details]
On Orders.OrderID = [Order Details].OrderID
Join Products
On [Order Details].ProductID = Products.ProductID
Where Month(Orders.OrderDate) = 1 And Year(Orders.OrderDate) = 1997
group by ProductName