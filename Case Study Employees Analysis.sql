Select Orders.OrderID,
CONCAT_WS(' ', Employees.FirstName, Employees.LastName) as EmployeesName,
Employees.Title,
(([Order Details].UnitPrice * [Order Details].Quantity) - ([Order Details].UnitPrice * [Order Details].Quantity * [Order Details].Discount)) as Sales,
Format(Orders.OrderDate, 'MM') as Month,
Orders.ShipCountry
From Orders
Inner Join [Order Details]
On Orders.OrderID = [Order Details].OrderID
Inner Join Employees
On Orders.EmployeeID = Employees.EmployeeID
Order By EmployeesName