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

-- Employees
INSERT INTO Employees (employee_no, fname, lname, position, phone)
VALUES (5001, 'Rob', 'Brown', 'Mechanic', '3052349999');
INSERT INTO Employees (employee_no, fname, lname, position, phone)
VALUES (5002, 'Bob', 'Jones', 'Mechanic', '3059872222');
INSERT INTO Employees (employee_no, fname, lname, position, phone)
VALUES (5003, 'Steven', 'Smith', 'Cashier', '3054343434');

-- Orders
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no)
VALUES (3001, 'abc123xyz', 20210311, 20210313, 5001);
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no)
VALUES (3002, 'cyz83sfa', 20050711, 20050712, 5001);
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no)
VALUES (3003, '4nfs9fwsrg', 20210314, 20210315, 5001);
INSERT INTO Orders(order_no, vin, start_date, end_date, employee_no)
VALUES (3004, 'dsds94wds', 20050926, 20050930, 5002);

-- Invoices
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, odometer_in, odometer_out, status, balance, date_printed, date_paid)
VALUES (4001, 1001, 'abc123xyz', 3001, 5001, 20000, 20008, 'Completed', 150, 20210313, 20210313);
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, odometer_in, odometer_out, status, balance, date_printed, date_paid)
VALUES (4002, 1001, 'cyz83sfa', 3002, 5002, 25500, 25503, 'Completed', 200, 20210415, 20210418);
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, odometer_in, odometer_out, status, balance, date_printed, date_paid)
VALUES (4003, 1002, '4nfs9fwsrg', 3003, 5001, 35001, 35002, 'Completed', 150, 20210213, 20210213);
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, odometer_in, odometer_out, status, balance, date_printed, date_paid)
VALUES (4004, 1003, 'dsds94wds', 3004, 5002, 54322, 54326, 'Completed', 300, 20210412, 20210413);
INSERT INTO Invoices (invoice_no, customer_no, vin, order_no, employee_no, odometer_in, odometer_out, status, balance, date_printed, date_paid)
VALUES (4005, 1001, 'abc123xyz', 3001, 5001, 20020, 20024, 'Completed', 50, 20210321, 20210323);

-- Notes
INSERT INTO Notes (note_no, order_no, description)
VALUES (6001, 3001, 'Starter motor broken');

-- Procedures 
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8001, 3001, 'Replace starter motor', 150);
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8002, 3001, 'Replacing accelerator', 50);
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8003, 3002, 'Replace headlight', 200);
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8004, 3003, 'Repairing transmission', 350);
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8005, 3004, 'Replace starter motor', 150);
INSERT INTO Procedures (procedure_no, order_no, description, cost)
VALUES (8006, 3004, 'Replacing accelerator', 50);

-- Items 
INSERT INTO Items (item_no, order_no, procedure_no, description, cost)
VALUES (7001, 3001, 8001, 'Starter motor', 100);
