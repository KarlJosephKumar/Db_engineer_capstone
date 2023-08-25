Use LittleLemonDB; 
-- Drop Database LittleLemonDB
#Insert Menuitems
INSERT INTO MenuItems (ItemName, Course, Cost)
VALUES
('Olives','Starters',5),
('Flatbread','Starters', 5),
('Minestrone', 'Starters', 8),
('Tomato bread','Starters', 8),
('Falafel', 'Starters', 7),
('Hummus', 'Starters', 5),
('Greek salad', 'Main Courses', 15),
('Bean soup', 'Main Courses', 12),
('Pizza', 'Main Courses', 15),
('Greek yoghurt','Desserts', 7),
('Ice cream', 'Desserts', 6),
('Cheesecake', 'Desserts', 4),
('Athens White wine', 'Drinks', 25),
('Corfu Red Wine', 'Drinks', 30),
('Turkish Coffee', 'Drinks', 10),
('Turkish Coffee', 'Drinks', 10),
('Kabasa', 'Main Courses', 17);

#insert menus
INSERT INTO Menu (MenuID, MenuItemID,Cuisine)
VALUES
(1, 1, 'Greek'),
(1, 7, 'Greek'),
(1, 10, 'Greek'),
(1, 13, 'Greek'),
(2, 3, 'Italian'),
(2, 9, 'Italian'),
(2, 12, 'Italian'),
(2, 15, 'Italian'),
(3, 5, 'Turkish'),
(3, 17, 'Turkish'),
(3, 11, 'Turkish'),
(3, 16, 'Turkish');

INSERT INTO ContactInfo (FullName, ContactNumber, Email)
VALUES
    ('John Doe', '123-456-7890', 'john.doe@example.com'),
    ('Jane Smith', '987-654-3210', 'jane.smith@example.com'),
    ('Michael Johnson', '555-123-4567', 'michael.johnson@example.com'),
    ('Emily Williams', '444-555-6666', 'emily.williams@example.com'),
    ('David Brown', '777-888-9999', 'david.brown@example.com'),
    ('Sarah Davis', '111-222-3333', 'sarah.davis@example.com'),
    ('Kevin Wilson', '222-333-4444', 'kevin.wilson@example.com'),
    ('Jessica Anderson', '888-777-6666', 'jessica.anderson@example.com'),
    ('Matthew Lee', '333-222-1111', 'matthew.lee@example.com'),
    ('Amanda Martinez', '666-555-4444', 'amanda.martinez@example.com');

Insert Into Customers (ContactInfoID)
Values
	(1), (2), (3), (4), (5), (6);
    
INSERT INTO Staff (Position, Salary, ContactID)
VALUES
    ('Waiter', 25000, 7),
    ('Cook', 30000, 8),
    ('Host/Hostess', 22000, 9),
    ('Manager', 50000, 10);

INSERT INTO Bookings (Date, TableNumber, CustomerID, StaffID)
VALUES
    ('2023-08-25', 3, 1, 2),
    ('2023-08-25', 1, 2, 3),
    ('2023-08-25', 2, 3, 1),
    ('2023-08-26', 4, 4, 4),
    ('2023-08-26', 6, 5, 2),
    ('2023-08-26', 5, 6, 1);
    
INSERT INTO Orders (Quantity, TotalCost, MenuID, BookingID)
VALUES
    (2, 250.00, 1, 1),
    (3, 420.50, 2, 2),
    (1, 150.75, 3, 3),
    (4, 550.00, 1, 4),
    (2, 300.00, 2, 5),
    (1, 120.50, 3, 6);
    
INSERT INTO OrderDeliveryStatus (Status, DeliveryDate, OrderID)
VALUES
    ('Pending', NULL, 1),
    ('Delivered', '2023-08-25', 2),
    ('Processing', NULL, 3),
    ('Delivered', '2023-08-26', 4),
    ('Pending', NULL, 5),
    ('Delivered', '2023-08-26', 6);