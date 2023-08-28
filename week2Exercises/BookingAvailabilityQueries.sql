#Table booking system
#Check availability on bookings
#Task 1
Insert Into Bookings (Date, TableNumber, CustomerID, StaffID)
Values ('2022-10-10', 5, 1, 1), 
('2022-11-12', 3, 3, 2), 
('2022-10-11', 2, 2, 3), 
('2022-10-13', 2, 1, 4);

#Task 2
Drop procedure if exists CheckBooking;
Delimiter //
Create Procedure CheckBooking(IN BookingDate Date, IN TableNo INT)
BEGIN
	IF Exists (Select * From Bookings Where Date = BookingDate AND TableNumber = TableNo)
    Then
		Select Concat("Table ", TableNo, " is already booked") As 'Booking Status';
	ELSE
		Select Concat("Table ", TableNo, " is available for the date ", BookingDate) As 'Booking Status';
	END IF;
END//
Delimiter ;
Call CheckBooking('2022-10-13', 2);

#Task 3
Drop procedure if exists AddValidBooking;
Delimiter //
Create Procedure AddValidBooking(IN BookingDate Date, IN TableNo INT)
BEGIN
Start transaction;
	IF Exists (Select * From Bookings Where Date = BookingDate AND TableNumber = TableNo)
    Then
		Select Concat("Table ", TableNo, " is already booked - Booking cancelled") As 'Booking Status';
        rollback;
	ELSE
		Insert Into Bookings (Date, TableNumber, CustomerID, StaffID)
        Values (BookingDate, TableNo, FLOOR(1 + RAND() * 6), FLOOR(1 + RAND() * 4));
        Commit;
	END IF;
END//
Delimiter ;
Call AddValidBooking('2022-10-13', 8);