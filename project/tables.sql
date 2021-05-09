CREATE TABLE Customers(
	customer_no int NOT NULL,
	fname varchar (15),
	lname varchar (15),
	house_no int NOT NULL,
	street varchar (15),
	city varchar (15),
	state varchar (2),
	phone varchar (10),
	email varchar (20),
	PRIMARY KEY (customer_no)
);

CREATE TABLE Vehicles(
	customer_no int NOT NULL,
	vin varchar (20),
	year int NOT NULL,
	make varchar (15),
	model varchar (15),
	trim varchar (10),
	PRIMARY KEY (vin),
	FOREIGN KEY (customer_no) REFERENCES Customers(customer_no)
);

CREATE TABLE Payments(
	customer_no int NOT NULL,
	payment_no int NOT NULL,
	card_no varchar (20),
	ccv varchar (3),
	exp_date varchar (4),
	PRIMARY KEY (payment_no),
	FOREIGN KEY (customer_no) REFERENCES Customers(customer_no)
);

CREATE TABLE Employees(
        employee_no int NOT NULL,
        fname varchar (15),
        lname varchar (15),
        position varchar (15),
        phone varchar (10),
        PRIMARY KEY (employee_no)
);

CREATE TABLE Orders(
	order_no int NOT NULL,
	vin varchar (20),
	start_date int,
	end_date int,
	employee_no int NOT NULL,
	PRIMARY KEY (order_no),
	FOREIGN KEY (vin) REFERENCES Vehicles(vin),
	FOREIGN KEY (employee_no) REFERENCES Employees(employee_no)
);

CREATE TABLE Invoices(
	invoice_no int NOT NULL,
	customer_no int NOT NULL,
	vin varchar (20),
	order_no int NOT NULL,
	employee_no int NOT NULL,
	odometer_in int NOT NULL,
	odometer_out int NOT NULL,
	status varchar (20),
	balance int NOT NULL,
	date_printed int,
	date_paid int,
	PRIMARY KEY (invoice_no),
	FOREIGN KEY (customer_no) REFERENCES Customers(customer_no),
	FOREIGN KEY (vin) REFERENCES Vehicles(vin),
	FOREIGN KEY (employee_no) REFERENCES Employees(employee_no),
	FOREIGN KEY (order_no) REFERENCES Orders(order_no)	
);

CREATE TABLE Notes(
	note_no int NOT NULL,
	order_no int NOT NULL,
	description varchar (40),
	PRIMARY KEY (note_no),
	FOREIGN KEY (order_no) REFERENCES Orders(order_no)
);

CREATE TABLE Procedures(
        procedure_no int NOT NULL,
        order_no int NOT NULL,
        description varchar (40),
        cost int NOT NULL,
        PRIMARY KEY (procedure_no),
        FOREIGN KEY (order_no) REFERENCES Orders(order_no)
);

CREATE TABLE Items(
	item_no int NOT NULL,
	order_no int NOT NULL,
	procedure_no int NOT NULL,
	description varchar (40),
	cost int NOT NULL,
	PRIMARY KEY (item_no),
	FOREIGN KEY (order_no) REFERENCES Orders(order_no),
	FOREIGN KEY (procedure_no) REFERENCES Procedures(procedure_no)
);
