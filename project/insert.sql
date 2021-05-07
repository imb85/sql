-- Customers
INSERT INTO Customers (customer_no, fname, lname, house_no, street, city, state, phone, email)
VALUES ();

-- Vehicles
INSERT INTO Vehicles (customer_no, vin, year, make, model, trim)
VALUES ();

-- Payments
INSERT INTO Payments (customer_no, payment_no, card_no, ccv, exp_date)
VALUES ();

-- Orders
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no, odometer_in, odometer_out)
VALUES ();

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
