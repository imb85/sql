CREATE TABLE Room(
	roomNo int NOT NULL,
	hotelNo int NOT NULL,
	roomType varchar(20),
	price decimal(5, 2)
	PRIMARY KEY (roomNo, hotelNo),
	FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);
