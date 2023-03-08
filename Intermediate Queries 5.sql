Select
	Case
		When [Order Details].UnitPrice * [Order Details].Quantity <= 100 Then 'Sales <= 100'
		When [Order Details].UnitPrice * [Order Details].Quantity > 100 And [Order Details].UnitPrice * [Order Details].Quantity <= 250 Then '100 < Sales <= 250 '
		When [Order Details].UnitPrice * [Order Details].Quantity > 250 And [Order Details].UnitPrice * [Order Details].Quantity <= 500 Then '250 < Sales <= 500'
		Else 'Sales > 500'
	End As [Range Sales], Count(OrderID) As "Jumlah OrderID"
From [Order Details]
Group By
		Case
		When [Order Details].UnitPrice * [Order Details].Quantity <= 100 Then 'Sales <= 100'
		When [Order Details].UnitPrice * [Order Details].Quantity > 100 And [Order Details].UnitPrice * [Order Details].Quantity <= 250 Then '100 < Sales <= 250 '
		When [Order Details].UnitPrice * [Order Details].Quantity > 250 And [Order Details].UnitPrice * [Order Details].Quantity <= 500 Then '250 < Sales <= 500'
		Else 'Sales > 500'
	End;