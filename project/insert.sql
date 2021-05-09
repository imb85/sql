-- Customers
INSERT INTO Customers (customer_no, fname, lname, house_no, street, city, state, phone, email)
VALUES (1001, 'Andrew', 'Kraynak', 123, 'Main St', 'Miami', 'FL', 1234565555, 'abk89@miami.edu');
INSERT INTO Customers (customer_no, fname, lname, house_no, street, city, state, phone, email)
VALUES (1002, 'Alex', 'Smith', 432, 'South St', 'Coral Gables', 'FL', 3054449999, 'mail1@mail.com');
INSERT INTO Customers (customer_no, fname, lname, house_no, street, city, state, phone, email)
VALUES (1003, 'Adam', 'Jones', 999, 'Center St', 'Miami', 'FL', 5552229876, 'mail3@mail.com');
INSERT INTO Customers (customer_no, fname, lname, house_no, street, city, state, phone, email)
VALUES (1004, 'Phillip', 'White', 567, '1st St', 'Miami Beach', 'FL', 2347773333, 'mail2@mail.com');

-- Vehicles
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1001, 'abc123xyz', 2020, 'Honda', 'Accord', 'LX');
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1001, 'cyz83sfa', 2018, 'BMW', 'X5', 'Limited');
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1002, '4nfs9fwsrg', 2015, 'Hyundai', 'Santa Fe', 'SE');
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1003, 'dsds94wds', 2016, 'Toyota', 'Camry', 'EX');
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1004, '4d8ejxd8e', 2011, 'Kia', 'Sorento', 'EX');
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES (1004, 'ddng83nd8sa', 2015, 'Mazda', 'Miata', 'SE');

-- Payments
INSERT INTO Payments (customer_no, payment_no, card_no, ccv, exp_date)
VALUES (1001, 2001, '1111222233334444', '123', '0325');
INSERT INTO Payments (customer_no, payment_no, card_no, ccv, exp_date)
VALUES (1001, 2002, '2222333344445555', '321', '1222');
INSERT INTO Payments (customer_no, payment_no, card_no, ccv, exp_date)
VALUES (1004, 2003, '1234123412341234', '555', '1024');

-- Orders
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no, odometer_in, odometer_out)
VALUES (3001, 'abc123xyz', );

-- Invoices
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, status, balance, date_printed, date_paid)
VALUES ();

-- Employees
INSERT INTO Employees (employee_no, fname, lname, position, phone)
VALUES ();

-- Notes
INSERT INTO Notes (note_no, order_no, description)
VALUES ();

-- Items 
INSERT INTO Items (item_no, order_no, procedure_no, description, cost)
VALUES ();

-- Procedures 
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES ();
