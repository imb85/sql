CREATE TABLE Customers(
	customer_no int NOT NULL,
	fname varchar (15),
	lname varchar (15),
	house_no int NOT NULL,
	street varchar (15),
	city varchar (15),
	state varchar (2),
	phone varchar (10),
	email varchar (20)
);

CREATE TABLE Vehicles(
	customer_no int NOT NULL,
	vin varchar (20),
	year int NOT NULL,
	make varchar (15),
	model varchar (15),
	trim varchar (10)
);

CREATE TABLE Payments(
	customer_no int NOT NULL,
	payment_no int NOT NULL,
	card_no varchar (20),
	ccv varchar (3),
	exp_date varchar (4)
);

CREATE TABLE Orders(
	order_no int NOT NULL,
	vin varchar (20),
	start_date date,
	end_date date,
	employee_no int NOT NULL,
	odometer_in int NOT NULL,
	odometer_out int NOT NULL
);

CREATE TABLE Invoices(
	invoice_no int NOT NULL,
	customer_no int NOT NULL,
	vin varchar (20),
	order_no int NOT NULL,
	employee_no int NOT NULL,
	status varchar (20),
	balance int NOT NULL,
	date_printed date,
	date_paid date	
);

CREATE TABLE Employees(
	employee_no int NOT NULL,
	fname varchar (15),
	lname varchar (15),
	position varchar (15),
	phone varchar (10)
);

CREATE TABLE Notes(
	note_no int NOT NULL,
	order_no int NOT NULL,
	description varchar (40)
);

CREATE TABLE Items(
	item_no int NOT NULL,
	order_no int NOT NULL,
	procedure_no int NOT NULL,
	description varchar (40),
	cost int NOT NULL
);

CREATE TABLE Procedures(
	procedure_no int NOT NULL,
	order_no int NOT NULL,
	description varchar (40),
	cost int NOT NULL
);
