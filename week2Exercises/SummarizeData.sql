#Create View, Task 1 Week 2
Create View OrdersView AS
Select OrderID, Quantity, TotalCost From Orders Where Quantity > 2;

#Task 2, week 2, query for 150+ total cost orders
Select Customers.CustomerID as CustomerID, 
ContactInfo.FullName as FullName, 
Orders.OrderID as OrderID, 
Orders.TotalCost as Cost,
Menu.Cuisine as MenuName,
Menuitems.ItemName as CourseName
From Orders
Inner Join Bookings On Orders.BookingID = Bookings.BookingID
Inner Join Menu On Orders.MenuID = Menu.MenuID
Inner Join MenuItems On Menu.MenuItemID = MenuItems.MenuItemID
Inner Join Customers On Customers.CustomerID = Bookings.CustomerID
Inner Join ContactInfo On Customers.ContactInfoID = ContactInfo.ContactInfoID
Where Orders.TotalCost > 150 AND MenuItems.Course = 'Starters'
Order By Orders.TotalCost;

#Task 3, week 2
Select Distinct Menu.Cuisine as MenuName
From Menu where MenuID = 
Any (Select MenuID from Orders Where Quantity > 2);