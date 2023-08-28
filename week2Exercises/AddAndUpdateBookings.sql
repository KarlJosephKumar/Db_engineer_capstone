#Add and update bookings
#Task 1
Drop Procedure IF EXISTS AddBooking;
delimiter //
Create Procedure AddBooking(IN CustID INT, IN TableNo INT, IN BookingDate Date)
BEGIN
Start transaction;
	IF Exists (Select * From Bookings Where Date = BookingDate AND TableNumber = TableNo)
    Then
		Select Concat("Table ", TableNo, " is already booked - Booking cancelled") As 'Booking Status';
        rollback;
	ELSE
		Insert Into Bookings (Date, TableNumber, CustomerID, StaffID)
        Values (BookingDate, TableNo, CustID, FLOOR(1 + RAND() * 4));
        Select "New Booking Added" AS Confirmation;
        Commit;
	END IF;
END//
Delimiter ;
Call AddBooking(3, 4, '2022-11-30');

#Task 2
Drop Procedure IF EXISTS UpdateBooking;
delimiter //
Create Procedure UpdateBooking(IN BookID INT, IN BookingDate Date)
BEGIN
Start transaction;
	IF Exists (Select * From Bookings Where BookingID = BookID)
    Then
		Update Bookings SET Date = BookingDate Where BookingID = BookID;
        Select Concat("Booking ", BookID, " updated") AS Confirmation;
        Commit;
	ELSE
		Select Concat("BookingID ", BookID, " does not exist") As 'Booking Status';
        rollback;
	END IF;
END//
Delimiter ;
Call UpdateBooking(14, '2022-11-25');

#Task 3
Drop Procedure IF EXISTS CancelBooking;
delimiter //
Create Procedure CancelBooking(IN BookID INT)
BEGIN
Start transaction;
	IF Exists (Select * From Bookings Where BookingID = BookID)
    Then
		Delete From Bookings Where BookingId = BookID;
        Select Concat("Booking ", BookID, " has been cancelled") AS Confirmation;
        Commit;
	ELSE
		Select Concat("BookingID ", BookID, " does not exist") As 'Booking Status';
        rollback;
	END IF;
END//
Delimiter ;
Call CancelBooking(14);
