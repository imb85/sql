-- List all details of all hotels in Seattle
SELECT * 
FROM Hotel
WHERE city='Seattle';

-- List roomNo, roomType, and price of the rooms in the Biltmore Hotel


-- List the guestNo and guestName of guests who live in Miami alphabetically
SELECT guestNo, guestName
FROM Guest
WHERE guestAddress='Miami';

-- List the number of rooms in each hotel
