CREATE TABLE Hotel(
	hotelNo int NOT NULL,
	hotelName varchar (25),
	city varchar (15),
	PRIMARY KEY (hotelNo)
);

CREATE TABLE Room(
	roomNo int NOT NULL,
	hotelNo int NOT NULL,
	roomType varchar(20),
	price decimal(5, 2),
	PRIMARY KEY (roomNo, hotelNo),
	FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);

CREATE TABLE Guest(
	guestNo int NOT NULL,
	guestName varchar(40),
	guestAddress varchar(40),
	PRIMARY KEY (guestNo)
);

CREATE TABLE Booking(
	hotelNo int NOT NULL,
	guestNo int NOT NULL,
	dateFrom date NOT NULL,
	dateTo date,
	roomNo int,
	PRIMARY KEY (hotelNo, guestNo, dateFrom),
	FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo),
	FOREIGN KEY (guestNo) REFERENCES Guest(guestNo)
);
