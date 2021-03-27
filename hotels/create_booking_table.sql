CREATE TABLE Booking(
	hotelNo int NOT NULL,
	guestNo int NOT NULL,
	dateFrom date NOT NULL,
	dateTo date,
	roomNo int,
	PRIMARY KEY (hotelNo, guestNo, dateFrom),
	FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);
