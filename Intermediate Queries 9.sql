Create Procedure ProcedureInvoice
@IdCustomer VARCHAR(10)

As
Begin
Select Orders.CustomerID,
Customers.CompanyName,
Orders.OrderID, Orders.OrderDate,
Orders.RequiredDate,
Orders.ShippedDate
From Orders
Join Customers
On Orders.CustomerID = Customers.CustomerID
Where Customers.CustomerID = @IdCustomer
End