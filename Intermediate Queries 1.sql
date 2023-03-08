Select Month(Orders.OrderDate) as Bulan,
Count(Orders.OrderID) as JumlahCustomer
from Orders
Where Year(Orders.OrderDate) = 1997
group by Month(Orders.OrderDate)