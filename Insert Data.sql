--Insert Test Data
INSERT INTO Customer (FirstName, LastName, Address, City, State, ZIP, Phone, Email, Age, DrivingLicenseNumber) VALUES
('John', 'Doe', '123 Main St', 'Anytown', 'CA', '12345', '555-1234', 'johndoe@example.com', 30, 'ABC123'),
('Jane', 'Doe', '456 Oak Ave', 'Sometown', 'CA', '67890', '555-5678', 'janedoe@example.com', 28, 'DEF456'),
('Bob', 'Smith', '789 Pine St', 'Othertown', 'CA', '54321', '555-9876', 'bobsmith@example.com', 35, 'GHI789'),
('Alice', 'Johnson', '321 Cedar Rd', 'Mytown', 'CA', '09876', '555-4321', 'alicejohnson@example.com', 42, 'JKL012'),
('Tom', 'Jones', '654 Elm St', 'Theirtown', 'CA', '13579', '555-2468', 'tomjones@example.com', 25, 'MNO345'),
('Sara', 'Lee', '987 Oak St', 'Yourtown', 'CA', '24680', '555-1357', 'saralee@example.com', 31, 'PQR678'),
('Mike', 'Smith', '234 Pine St', 'Histown', 'CA', '97531', '555-8642', 'mikesmith@example.com', 40, 'STU901'),
('Linda', 'Johnson', '567 Cedar Rd', 'Heretown', 'CA', '24601', '555-7314', 'lindajohnson@example.com', 37, 'VWX234'),
('Mark', 'Brown', '890 Elm St', 'Whosetown', 'CA', '19753', '555-6184', 'markbrown@example.com', 29, 'YZA567'),
('Emily', 'Davis', '123 Oak St', 'NoWhereville', 'CA', '35791', '555-9826', 'emilydavis@example.com', 27, 'BCD890');

INSERT INTO CustomerFeedback (CustomerID, Feedback) VALUES
(10000001, 'Great experience renting a car from this location.'),
(10000002, 'The vehicle I rented was in excellent condition.'),
(10000003, 'The customer service was top-notch.'),
(10000004, 'I had some issues with the billing, but they were resolved.'),
(10000005, 'The pickup and dropoff process was quick and easy.'),
(10000006, 'The rental rate was a bit higher than I expected.'),
(10000007, 'The location was a bit difficult to find.'),
(10000008, 'I had some trouble with the insurance coverage.'),
(10000009, 'The vehicle I rented was not very clean.'),
(10000010, 'The rental process was very smooth.');

INSERT INTO Discount (DiscountAmount, DiscountType)
VALUES
  (10.00, 'Student Discount'),
  (5.00, 'Military Discount'),
  (15.00, 'Senior Discount'),
  (20.00, 'First-Time Customer Discount'),
  (25.00, 'Holiday Discount'),
  (7.50, 'Referral Discount'),
  (12.00, 'Corporate Discount'),
  (8.00, 'Family Discount'),
  (3.50, 'Repeat Customer Discount'),
  (30.00, 'Seasonal Discount');

INSERT INTO Customer_Discount (CustomerID, DiscountID) VALUES
(10000001, 30000001),
(10000002, 30000002),
(10000003, 30000003),
(10000004, 30000004),
(10000005, 30000005),
(10000006, 30000006),
(10000007, 30000007),
(10000008, 30000008),
(10000009, 30000009),
(10000010, 30000010)

INSERT INTO Vehicle (Color, Manufacturer, Model, Type, Mileage, Status)
VALUES
('Red', 'Ford', 'Mustang', 'Sports Car', 10000, 'Available'),
('Blue', 'Toyota', 'Camry', 'Sedan', 20000, 'Available'),
('White', 'Honda', 'Civic', 'Sedan', 15000, 'Available'),
('Black', 'BMW', 'X5', 'SUV', 30000, 'Unavailable'),
('Silver', 'Chevrolet', 'Equinox', 'SUV', 25000, 'Available'),
('Red', 'Nissan', 'Altima', 'Sedan', 18000, 'Unavailable'),
('Gray', 'Mercedes-Benz', 'C-Class', 'Sedan', 22000, 'Available'),
('Black', 'Audi', 'Q7', 'SUV', 28000, 'Available'),
('Green', 'Jeep', 'Wrangler', 'SUV', 12000, 'Available'),
('White', 'Kia', 'Soul', 'Hatchback', 9000, 'Available');

INSERT INTO Insurance (InsuranceType, VehicleID, Provider, PolicyNumber, ExpirationDate)
VALUES
('Liability', 50000001, 'State Farm', '1234-5678', '2024-03-31 00:00:00'),
('Collision', 50000002, 'Geico', '9876-5432', '2023-06-15 00:00:00'),
('Comprehensive', 50000003, 'Allstate', '4567-8901', '2022-12-01 00:00:00'),
('Liability', 50000004, 'Progressive', '2468-1357', '2023-09-22 00:00:00'),
('Collision', 50000005, 'Nationwide', '8642-9753', '2024-05-10 00:00:00'),
('Comprehensive', 50000006, 'State Farm', '1357-2468', '2022-11-30 00:00:00'),
('Liability', 50000007, 'Geico', '8024-7915', '2024-02-28 00:00:00'),
('Collision', 50000008, 'Allstate', '6789-0123', '2023-07-01 00:00:00'),
('Comprehensive', 50000009, 'Progressive', '3691-2580', '2022-10-15 00:00:00'),
('Liability', 50000010, 'Nationwide', '2468-1357', '2024-01-01 00:00:00');

INSERT INTO Location (Address, City, State, ZIP)
VALUES
('123 Main St', 'Anytown', 'CA', '12345'),
('456 Oak St', 'Otherville', 'NY', '67890'),
('789 Elm St', 'Smalltown', 'TX', '23456'),
('555 Maple St', 'Bigcity', 'IL', '78901'),
('111 Pine St', 'Nowhere', 'WA', '34567'),
('222 Cedar St', 'Somewhere', 'FL', '45678'),
('333 Birch St', 'Everywhere', 'NC', '56789'),
('444 Spruce St', 'Noway', 'NV', '67890'),
('777 Walnut St', 'Hometown', 'OH', '78901'),
('888 Cherry St', 'Metropolis', 'IL', '89012');

INSERT INTO VehicleMaintenance (MaintenanceDate, MaintenanceRate, VehicleID)
VALUES
('2022-01-15 10:30:00', 50.00, 50000001),
('2022-02-25 15:45:00', 75.00, 50000002),
('2022-03-12 09:15:00', 100.00, 50000003),
('2022-04-05 11:00:00', 60.00, 50000004),
('2022-05-20 13:30:00', 80.00, 50000005),
('2022-06-10 14:45:00', 90.00, 50000006),
('2022-07-18 16:00:00', 70.00, 50000007),
('2022-08-22 09:30:00', 120.00, 50000008),
('2022-09-05 11:15:00', 55.00, 50000009),
('2022-10-30 13:45:00', 85.00, 50000010);

INSERT INTO Branch (Email, Address, City, State, Zip, Phone)
VALUES 
('branch1@example.com', '123 Main St', 'Anytown', 'CA', '12345', '(555) 555-1234'),
('branch2@example.com', '456 Elm St', 'Otherville', 'NY', '67890', '(555) 555-5678'),
('branch3@example.com', '789 Oak Ave', 'Smallville', 'TX', '54321', '(555) 555-9012'),
('branch4@example.com', '111 Pine St', 'Big City', 'IL', '13579', '(555) 555-2468'),
('branch5@example.com', '222 Maple Dr', 'Newport', 'RI', '97531', '(555) 555-3690'),
('branch6@example.com', '333 Cedar Ln', 'Greenfield', 'MA', '24680', '(555) 555-8024'),
('branch7@example.com', '444 Birch Rd', 'Sunshine', 'FL', '86420', '(555) 555-1357'),
('branch8@example.com', '555 Oak St', 'Riverdale', 'NJ', '01357', '(555) 555-4680'),
('branch9@example.com', '666 Pine Ave', 'Grandville', 'MI', '64208', '(555) 555-7913'),
('branch10@example.com', '777 Elm Rd', 'Oceanview', 'CA', '90210', '(555) 555-0246');

INSERT INTO Employee (FirstName, LastName, Position, Address, City, State, Zip, Phone, Email, BranchID)
VALUES
  ('John', 'Doe', 'Manager', '123 Main St', 'Los Angeles', 'CA', '90001', '555-1234', 'johndoe@example.com', 90000001),
  ('Jane', 'Smith', 'Sales Associate', '456 Elm St', 'New York', 'NY', '10001', '555-5678', 'janesmith@example.com',  90000002),
  ('Bob', 'Johnson', 'Accountant', '789 Oak Ave', 'Chicago', 'IL', '60601', '555-9012', 'bobjohnson@example.com', 90000001),
  ('Samantha', 'Lee', 'Customer Service Representative', '234 Maple Dr', 'San Francisco', 'CA', '94101', '555-3456', 'samanthalee@example.com',  90000003),
  ('David', 'Williams', 'Sales Manager', '567 Pine St', 'Boston', 'MA', '02101', '555-7890', 'davidwilliams@example.com',  90000002),
  ('Maria', 'Garcia', 'HR Specialist', '890 Cedar Ave', 'Miami', 'FL', '33101', '555-2345', 'mariagarcia@example.com',  90000004),
  ('Steven', 'Brown', 'Marketing Manager', '123 Elm St', 'Houston', 'TX', '77001', '555-6789', 'stevenbrown@example.com', 90000001),
  ('Jessica', 'Rodriguez', 'Operations Coordinator', '456 Oak Ave', 'Phoenix', 'AZ', '85001', '555-0123', 'jessicarodriguez@example.com', 90000003),
  ('William', 'Nguyen', 'IT Support Specialist', '789 Maple Dr', 'Seattle', 'WA', '98101', '555-4567', 'williamnguyen@example.com', 90000002),
  ('Emily', 'Taylor', 'Recruiter', '234 Pine St', 'Atlanta', 'GA', '30301', '555-8901', 'emilytaylor@example.com',  90000004);

INSERT INTO Rental (CustomerID, VehicleID, RentalStartDate, RentalEndDate, RentalRate, InsuranceID, DiscountID, FeedbackID, BranchID, PickupLocation, DropoffLocation)
VALUES
(10000001, 50000001, '2023-04-01 09:00:00', '2023-04-05 17:00:00', 50.00, 60000001, 30000001, 20000002, 90000001, 70000001, 70000002),
(10000002, 50000002, '2023-04-03 10:00:00', '2023-04-06 18:00:00', 45.00, 60000002, 30000002, 20000003, 90000002, 70000003, 70000004),
(10000003, 50000003, '2023-04-02 08:00:00', '2023-04-04 12:00:00', 30.00, 60000003, 30000003, 20000004, 90000003, 70000005, 70000006),
(10000004, 50000004, '2023-04-05 11:00:00', '2023-04-08 15:00:00', 60.00, 60000004, 30000004, 20000005, 90000004, 70000007, 70000008),
(10000005, 50000005, '2023-04-06 13:00:00', '2023-04-10 16:00:00', 55.00, 60000005, 30000005, 20000006, 90000005, 70000009, 70000010),
(10000006, 50000006, '2023-04-04 12:00:00', '2023-04-07 20:00:00', 40.00, 60000006, 30000006, 20000007, 90000001, 70000002, 70000003),
(10000007, 50000007, '2023-04-02 10:00:00', '2023-04-05 17:00:00', 55.00, 60000007, 30000007, 20000008, 90000002, 70000004, 70000006),
(10000008, 50000008, '2023-04-05 08:00:00', '2023-04-09 12:00:00', 65.00, 60000008, 30000008, 20000009, 90000003, 70000005, 70000007),
(10000009, 50000009, '2023-04-07 11:00:00', '2023-04-10 18:00:00', 50.00, 60000009, 30000009, 20000010, 90000004, 70000006, 70000008),
(10000010, 50000010, '2023-04-04 09:00:00', '2023-04-07 16:00:00', 35.00, 60000010, 30000010, 20000011, 90000005, 70000007, 70000009);

INSERT INTO Rental_Employee (RentalID, EmployeeID)
VALUES
(110000001, 100000005),
(110000002, 100000004),
(110000003, 100000003),
(110000004, 100000002),
(110000005, 100000007),
(110000006, 100000002),
(110000007, 100000001),
(110000008, 100000004),
(110000009, 100000007),
(110000010, 100000001);

INSERT INTO Bill (RentalID, TotalAmount) 
VALUES
(110000001, 200.50),
(110000002, 150.00),
(110000003, 350.75),
(110000004, 75.25),
(110000005, 225.00),
(110000006, 180.50),
(110000007, 300.25),
(110000008, 400.00),
(110000009, 275.75),
(110000010, 125.00);

INSERT INTO Payment (BillID, PaymentAmount, PaymentDate, PaymentMethod) VALUES
(130000001, 150.00, '2023-03-31 10:00:00', 'Credit Card'),
(130000002, 200.00, '2023-03-31 11:00:00', 'Debit Card'),
(130000003, 250.00, '2023-03-31 12:00:00', 'Cash'),
(130000004, 300.00, '2023-03-31 13:00:00', 'Credit Card'),
(130000005, 350.00, '2023-03-31 14:00:00', 'Debit Card'),
(130000006, 400.00, '2023-03-31 15:00:00', 'Cash'),
(130000007, 450.00, '2023-03-31 16:00:00', 'Credit Card'),
(130000008, 500.00, '2023-03-31 17:00:00', 'Debit Card'),
(130000009, 550.00, '2023-03-31 18:00:00', 'Cash'),
(130000010, 600.00, '2023-03-31 19:00:00', 'Credit Card');