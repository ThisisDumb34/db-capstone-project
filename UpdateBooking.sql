DELIMITER $$

CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN Date DATE)
	BEGIN
		UPDATE bookings
		SET date = BookingDate
        WHERE booking_id = BookingID;
		
		SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation";
    END$$

DELIMITER ;

CALL UpdateBooking(9, "2022-12-17");