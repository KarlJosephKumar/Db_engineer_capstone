#Optimized Queries, Week 2
#Task 1
Drop Procedure IF EXISTS GetMaxQuantity;
Delimiter //
Create Procedure GetMaxQuantity()
Begin
Select MAX(Quantity) AS 'Max Quantity in Orders' From Orders Group By OrderID Order By Quantity DESC Limit 1;
END//
Delimiter ;
Call GetMaxQuantity;

#Task 2
Prepare GetOrderDetail From
'Select OrderID, Quantity, TotalCost From Orders Where OrderID = ?';
SET @ID = 1;
Execute GetOrderDetail USING @ID;

#Task 3
Drop Procedure IF EXISTS CancelOrder;
Delimiter //
Create Procedure CancelOrder(IN Oid INT)
Begin
	IF Exists (Select * From Orders Where OrderID = Oid)
	THEN
		Delete From Orders Where OrderID = Oid;
		Select Concat("Order ", Oid, " is cancelled") AS Confirmation;
    ELSE
		Select "OrderID does not exists" AS Confirmation;
	End IF;
END//
Delimiter ;
Call CancelOrder(7);