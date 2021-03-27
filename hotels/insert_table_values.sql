-- Hotel values
INSERT INTO Hotel (hotelNo, hotelName, city)
VALUES ('1001', 'Holiday Inn', 'Miami');

INSERT INTO Hotel (hotelNo, hotelName, city)
VALUES ('1002', 'Biltmore Hotel', 'Coral Gables');

INSERT INTO Hotel (hotelNo, hotelName, city)
VALUES ('1003', 'Hilton', 'Seattle');

INSERT INTO Hotel (hotelNo, hotelName, city)
VALUES ('1004', 'Double Tree', 'Chicago');

INSERT INTO Hotel(hotelNo, hotelName, city)
VALUES ('1005', 'Quality Inn', 'Seattle');

-- Room values
INSERT INTO Room (roomNo, hotelNo, roomType, price)
VALUES ('213', '1002', 'Suite', '299.99');

INSERT INTO Room (rooomNo, hotelNo, roomType, price)
VALUES ('403', '1002', 'Double', '359.99');

INSERT INTO Room (roomNo, hotelNo, roomType, price)
VALUES ('701', '1002', 'Penthouse', '949.99');

INSERT INTO Room (roomNo, hotelNo, roomType, price)
VALUES ('516', '1002', 'Double', '369.99');

INSERT INTO Room (roomNo, hotelNo, roomType, price)
VALUES ('307', '1003', 'Suite', '229.99');

-- Guest values
INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES ('1734', 'Bill Smith', 'Fort Lauderdale');

INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES ('1735', 'Steven White', 'Coral Gables');

INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES ('1736', 'Adam Jones', 'Miami');

INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES ('1737', 'Alex Baker', 'Miami');

INSERT INTO Guest (guestNo, guestName, guestAddress)
VALUES ('1738', 'Emma Johnson', 'Miami');

-- Booking values
INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES ('1002', '1734', '2021-03-15', '2021-03-18', '213');

INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES ('1002', '1735', '2021-03-18', '2021-03-21', '403');

INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES ('1002', '1736', '2021-03-17', '2021-03-18', '701');

INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES ('1002', '1737', '2021-03-25', '2021-03-27', '516');

INSERT INTO Booking (hotelNo, guestNo, dateFrom, dateTo, roomNo)
VALUES ('1003', '1738', '2021-03-25', '2021-03-30', '307');

