-- List all details of all hotels in Seattle
SELECT * 
FROM Hotel
WHERE city='Seattle';

-- List roomNo, roomType, and price of the rooms in the Biltmore Hotel
SELECT roomNo, roomType, price
FROM Room
WHERE hotelNo=(
	SELECT hotelNo
	FROM Hotel
	WHERE hotelName='Biltmore Hotel');

-- List the guestNo and guestName of guests who live in Miami alphabetically
SELECT guestNo, guestName
FROM Guest
WHERE guestAddress='Miami';

-- List the number of rooms in each hotel
SELECT hotelNo, COUNT(roomNo) AS count
FROM Room
GROUP BY hotelNo;
