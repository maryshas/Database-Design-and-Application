--Database Project 3 (Anitya, Ethan, Justin, Mary)
--Completed on SSMS

--Insert Statements

--Insert Persons
INSERT INTO Person (SSN, DOB, Name, Address, PhoneNumber, Email) VALUES
(123456789, '1980-05-15', 'John Smilow', '123 Main St, Cityville, USA', '123-321-1234', 'john@gmail.com'),
(234567890, '1992-09-28', 'Alice Johnson', '456 Elm St, Townsville, USA', '456-654-5678', 'alice@gmail.com'),
(345678901, '1975-12-03', 'Michael Brown', '789 Oak St, Villageton, USA', '789-987-9012', 'michael@gmail.com'),
(456789012, '1988-04-20', 'Emily Davis', '321 Pine St, Hamletville, USA', '101-112-3456', 'emily@gmail.com'),
(567890123, '1963-07-11', 'Jessica Wilson', '654 Birch St, Countryside, USA', '131-415-7890', 'jessica@gmail.com'),
(678901234, '1978-02-19', 'David Martinez', '987 Cedar St, Riverside, USA', '161-718-2345', 'david@gmail.com'),
(789012345, '1995-10-24', 'Sarah Taylor', '210 Maple St, Hilltown, USA', '192-021-6789', 'sarah@gmail.com'),
(890123456, '1982-03-08', 'Daniel Anderson', '543 Walnut St, Lakeside, USA', '212-223-0123', 'daniel@gmail.com'),
(901234567, '1970-08-17', 'Jennifer Garcia', '876 Spruce St, Seaville, USA', '232-425-4567', 'jennifer@gmail.com'),
(012345678, '1986-11-30', 'James Rodriguez', '132 Fir St, Hillside, USA', '262-728-7891', 'james@gmail.com'),
(111222333, '1990-06-25', 'Emma Miller', '975 Poplar St, Mountainview, USA', '293-031-2346', 'emma@gmail.com'),
(222333444, '1973-09-12', 'Andrew Wilson', '786 Oak St, Lakeside, USA', '323-334-6781', 'andrew@gmail.com'),
(333444555, '1984-01-05', 'Olivia Brown', '1023 Elm St, Riverdale, USA', '353-637-0124', 'olivia@gmail.com'),
(444555666, '1977-04-18', 'Matthew Johnson', '547 Pine St, Lakeside, USA', '383-940-4568', 'matthew@gmail.com'),
(555666777, '1998-07-27', 'Sophia Davis', '895 Maple St, Hilltown, USA', '414-243-8901', 'sophia@gmail.com'),
(111222330, '1980-06-01', 'John Doe', '123 Main St, Cityville, USA', '123-321-1111', 'john.doe@gmail.com'),
(222333440, '1990-07-15', 'Jane Smith', '456 Elm St, Townsville, USA', '456-654-2222', 'jane.smith@gmail.com'),
(333444550, '1985-08-20', 'Mike Johnson', '789 Oak St, Villageton, USA', '789-987-3333', 'mike.johnson@gmail.com'),
(444555660, '1975-09-05', 'Emily Brown', '321 Pine St, Hamletville, USA', '101-112-4444', 'emily.brown@gmail.com'),
(555666770, '1987-10-10', 'Sarah Davis', '654 Birch St, Countryside, USA', '131-415-5555', 'sarah.davis@gmail.com'),
(666777888, '1978-11-15', 'Michael Wilson', '987 Cedar St, Riverside, USA', '161-718-6666', 'michael.wilson@gmail.com'),
(777888999, '1992-12-20', 'Jennifer Martinez', '210 Maple St, Hilltown, USA', '131-415-7777', 'jennifer.martinez@gmail.com'),
(888999000, '1989-01-25', 'David Taylor', '543 Walnut St, Lakeside, USA', '323-334-8888', 'david.taylor@gmail.com'),
(999000111, '1983-02-01', 'Jessica Garcia', '876 Spruce St, Seaville, USA', '414-243-9999', 'jessica.garcia@gmail.com'),
(000111222, '1981-03-05', 'Daniel Rodriguez', '132 Fir St, Hillside, USA', '192-021-0000', 'daniel.rodriguez@gmail.com');

--Insert Dental Procedures
INSERT INTO DentalProcedure (procID, procName, procedurePrice) VALUES
(1, 'Teeth Cleaning', 100),
(2, 'Filling', 200),
(3, 'Root Canal', 800),
(4, 'Tooth Extraction', 500),
(5, 'Dental Implant', 1500),
(6, 'Braces Installation', 2500),
(7, 'Crown', 1000),
(8, 'Denture', 1200),
(9, 'Bridges', 1800),
(10, 'Teeth Whitening', 300),
(11, 'X-Ray', 150),
(12, 'Consultation', 50),
(13, 'Orthodontic Retainer', 500),
(14, 'Periodontal Treatment', 700),
(15, 'Oral Surgery', 1000);

--Insert Appointments
INSERT INTO Appointments (ApptID, ApptDate, ApptTime, Status, AppointmentSSN, ProcedureID) VALUES
(1, '2024-02-01', '09:00 AM', 'Scheduled', 222333440, 1),
(2, '2024-04-05', '10:30 AM', 'Completed', 333444550, 2),
(3, '2024-04-07', '02:00 PM', 'Scheduled', 444555660, 3),
(4, '2024-02-01', '11:00 AM', 'Cancelled', 555666770, 4),
(5, '2024-04-10', '03:30 PM', 'Scheduled', 666777888, 5),
(6, '2024-01-01', '01:45 PM', 'Completed', 777888999, 6),
(7, '2024-04-15', '09:30 AM', 'Scheduled', 888999000, 7),
(8, '2024-04-17', '04:15 PM', 'Completed', 999000111, 8),
(9, '2024-04-20', '10:00 AM', 'Scheduled', 000111222, 9),
(10, '2024-04-22', '11:30 AM', 'Scheduled', 111222330, 10);


--Insert Billings
INSERT INTO Billings (BillingID, BIllingDate, AssignedDoctor, Amount, AppointmentID, ProcedureID) VALUES
(1, '2024-03-01', 'Dr. Smilow', 100, 1, 1),
(2, '2024-04-05', 'Dr. Smilow', 200, 2, 2),
(3, '2024-04-07', 'Dr. Davis', 800, 3, 3),
(4, '2024-03-01', 'Dr. Davis', 500, 4, 4),
(5, '2024-04-10', 'Dr. Brown', 1500, 5, 5),
(6, '2024-02-01', 'Dr. Smilow', 2500, 6, 6),
(7, '2024-04-15', 'Dr. Brown', 1000, 7, 7),
(8, '2024-04-17', 'Dr. Davis', 1200, 8, 8),
(9, '2024-04-20', 'Dr. Davis', 1800, 9, 9),
(10, '2024-04-22', 'Dr. Smilow', 300, 10, 10);


--Insert CompanyBills
INSERT INTO CompanyBills (BillID) VALUES
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015);

--Insert Payments
INSERT INTO Payments (PaymentID, Amount, PaymentDate, InvoiceID, CompanyBillID, PaymentType) VALUES
(3001, 100, '2024-04-03', 1, 2001, 'Credit Card'),
(3002, 200, '2024-04-05', 2, 2002, 'Check'),
(3003, 800, '2024-04-07', 3, 2003, 'Cash'),
(3004, 500, '2024-04-08', 4, 2004, 'Credit Card'),
(3005, 1500, '2024-04-10', 5, 2005, 'Cash'),
(3006, 2500, '2024-04-12', 6, 2006, 'Credit Card'),
(3007, 1000, '2024-04-15', 7, 2007, 'Cash'),
(3008, 1200, '2024-04-17', 8, 2008, 'Check'),
(3009, 1800, '2024-04-20', 9, 2009, 'Cash'),
(3010, 300, '2024-04-22', 10, 2010, 'Credit Card');


--Insert CreditCard
INSERT INTO CreditCard (PaymentID, Number, CVV, [EXP]) VALUES
(3001, 1234567890123456, 123, '2024-12-31'),
(3004, 9876543210987654, 456, '2025-06-30'),
(3006, 5432167890123456, 789, '2024-09-30'),
(3010, 9876123456789012, 234, '2025-03-31');


--Insert Check
INSERT INTO [Check] (PaymentID, Check#) VALUES
(3002, 123456),
(3008, 654321);



--Insert Cash
INSERT INTO Cash (PaymentID) VALUES
(3003),
(3005),
(3007),
(3009);



--Insert Utility
INSERT INTO Utility (UtilityID, Gas,Water,Electric, UtilityBillID) VALUES
(4001, 300, 600, 1000, 2001),
(4002, 350, 700, 1200, 2002),
(4003, 325, 650, 1100, 2003),
(4004, 330, 665, 1150, 2004),
(4005, 315, 675, 1000, 2005),
(4006, 388, 612, 1300, 2006),
(4007, 300, 780, 1279, 2007),
(4008, 213, 600, 900, 2008),
(4009, 150, 300, 400, 2009),
(4010, 234, 567, 890, 2010),
(4011, 400, 800, 1300, 2011),
(4012, 301, 560, 1100, 2012),
(4013, 333, 555, 999, 2013),
(4014, 260, 670, 1103, 2014),
(4015, 450, 675, 1234, 2015);



--Inser Inventory
INSERT INTO Inventory (ItemID, InventoryName, Quantity, Cost, InventoryBillID) VALUES
(5001, 'Toothbrush', 100, 1.50, 2001),
(5002, 'Dental Floss', 200, 1.00, 2002),
(5003, 'Toothpaste', 150, 2.00, 2003),
(5004, 'Mouthwash', 120, 3.50, 2004),
(5005, 'Dental Mirror', 50, 5.00, 2005),
(5006, 'Scaler', 30, 10.00, 2006),
(5007, 'Dental Probe', 40, 8.00, 2007),
(5008, 'Gloves', 300, 0.50, 2008),
(5009, 'Masks', 200, 0.75, 2009),
(5010, 'Syringes', 100, 2.50, 2010),
(5011, 'Gauze Pads', 150, 1.25, 2011),
(5012, 'Cotton Rolls', 200, 1.00, 2012),
(5013, 'Composite Resin', 50, 15.00, 2013),
(5014, 'Bonding Agent', 30, 20.00, 2014),
(5015, 'Temporary Cement', 40, 10.00, 2015);

--Insert Rent
INSERT INTO Rent (RentalCompanyName, RentBillID) VALUES
('Dental Rental', 2001),
('Dental Rental', 2002),
('Dental Rental', 2003),
('Dental Rental', 2004),
('Dental Rental', 2005),
('Dental Rental', 2006),
('Dental Rental', 2007),
('Dental Rental', 2008),
('Dental Rental', 2009),
('Dental Rental', 2010),
('Dental Rental', 2011),
('Dental Rental', 2012),
('Dental Rental', 2013),
('Dental Rental', 2014),
('Dental Rental', 2015);

--Insert Use
INSERT INTO [Use] (ProcedureID, ItemID) VALUES
(1, 5001),
(2, 5002),
(3, 5003),
(4, 5004),
(5, 5005),
(6, 5006),
(7, 5007),
(8, 5008),
(9, 5009),
(10, 5010),
(11, 5011),
(12, 5012),
(13, 5013),
(14, 5014),
(15, 5015);

--Insert Insurance Plan
INSERT INTO InsurancePlan (policyID, CompanyName, PlanType, GroupNumber, CoverageDate, InsuranceSSN) VALUES
(6001, 'Delta Dental', 'PPO', 12345, '2024-01-01', 123456789),
(6002, 'DEF Insurance', 'HMO', 54321, '2024-03-15', 234567890),
(6003, 'FGH Insurance', 'EPO', 98765, '2024-02-28', 345678901),
(6004, 'Delta Dental', 'POS', 13579, '2024-04-10', 456789012),
(6005, 'JKL Insurance', 'HSA', 24680, '2024-05-20', 567890123),
(6006, 'Delta Dental', 'PPO', 98765, '2024-03-01', 678901234),
(6007, 'PQR Insurance', 'HMO', 54321, '2024-06-15', 789012345),
(6008, 'STU Insurance', 'EPO', 12345, '2024-07-20', 890123456),
(6009, 'VWX Insurance', 'POS', 13579, '2024-08-12', 901234567),
(6010, 'YZA Insurance', 'HSA', 24680, '2024-09-05', 012345678),
(6011, 'BCD Insurance', 'PPO', 98765, '2024-10-30', 111222333),
(6012, 'Delta Dental', 'HMO', 54321, '2024-11-18', 222333444),
(6013, 'HIJ Insurance', 'EPO', 12345, '2024-12-25', 333444555),
(6014, 'Delta Dental', 'POS', 13579, '2025-01-03', 444555666),
(6015, 'NOP Insurance', 'HSA', 24680, '2025-02-14', 555666777),
(6016, 'Delta Dental', 'PPO', 54321, '2025-01-01', 111222330),
(6017, 'XYZ Insurance', 'HMO', 98765, '2025-02-15', 222333440),
(6018, 'Delta Dental', 'EPO', 24680, '2025-03-20', 333444550),
(6019, 'GHI Insurance', 'POS', 13579, '2025-04-05', 444555660),
(6020, 'JKL Insurance', 'HSA', 80204, '2025-05-10', 555666770),
(6021, 'MNO Insurance', 'PPO', 24680, '2025-06-15', 666777888),
(6022, 'Delta Dental', 'HMO', 98765, '2025-07-20', 777888999),
(6023, 'STU Insurance', 'EPO', 54321, '2025-08-25', 888999000),
(6024, 'Delta Dental', 'POS', 13579, '2025-09-30', 999000111),
(6025, 'YZA Insurance', 'HSA', 80204, '2025-10-05', 000111222);

--Insert Employee
INSERT INTO Employee (AccNum, W2Completion, ShiftSchedule, EmployeeSSN) VALUES
(7001, 1, 'Mon-Fri, 9 AM - 5 PM', 123456789),
(7002, 0, 'Tues-Sat, 11 AM - 7 PM', 234567890),
(7003, 1, 'Mon-Wed, Fri-Sat, 8 AM - 4 PM', 345678901),
(7004, 0, 'Wed-Mon, 3 PM - 11 PM', 456789012),
(7005, 1, 'Thu-Sun, 12 PM - 8 PM', 567890123),
(7006, 0, 'Fri-Tue, 10 AM - 6 PM', 678901234),
(7007, 1, 'Mon, Wed-Sat, 9 AM - 5 PM', 789012345),
(7008, 0, 'Tue-Fri, Sun, 7 AM - 3 PM', 890123456),
(7009, 1, 'Mon-Sat, 10 AM - 6 PM', 901234567),
(7010, 0, 'Wed-Mon, 12 PM - 8 PM', 012345678),
(7011, 1, 'Tue, Thu-Sun, 11 AM - 7 PM', 111222333),
(7012, 0, 'Mon, Wed-Sat, 1 PM - 9 PM', 222333444),
(7013, 1, 'Tue-Sun, 2 PM - 10 PM', 333444555),
(7014, 0, 'Wed-Mon, 11 AM - 7 PM', 444555666),
(7015, 1, 'Mon-Fri, 8 AM - 4 PM', 555666777);

--Insert MedicalProfessional
INSERT INTO MedicalProfessional (Type, License, ProfessionalSSN) VALUES
('Dentist', '123456789', 123456789),
('Orthodontist', '234567890', 234567890),
('Endodontist', '345678901', 345678901),
('Oral Surgeon', '456789012', 456789012),
('Periodontist', '567890123', 567890123),
('Dental Hygienist', '678901234', 678901234),
('Dental Assistant', '789012345', 789012345),
('Prosthodontist', '890123456', 890123456),
('Pedodontist', '901234567', 901234567),
('Oral Pathologist', '012345678', 012345678),
('Public Health Dentist', '111222333', 111222333),
('Veterinary Dentist', '222333444', 222333444),
('Forensic Odontologist', '333444555', 333444555),
('Geriatric Dentist', '444555666', 444555666),
('Cosmetic Dentist', '555666777', 555666777);

--Insert Patient
INSERT INTO Patient (EmergencyContactInfo, HIPPASigned, ImagingDate, Medications, AllergyInfo, LastUpdated, PatientSSN, InsurancePlanID) VALUES
(1112223330, 1, '2024-06-01', 'Ibuprofen', 'Penicillin', '2024-06-05', 222333440, 6016),
(2223334440, 0, '2024-07-15', 'Acetaminophen', 'Sulfa Drugs', '2024-07-20', 333444550, 6017),
(3334445550, 1, '2024-08-20', 'Amoxicillin', 'None', '2024-08-25', 444555660, 6018),
(4445556660, 0, '2024-09-05', 'Naproxen', 'Aspirin', '2024-09-10', 555666770, 6019),
(5556667770, 1, '2024-10-10', 'Loratadine', 'Codeine', '2024-10-15', 666777888, 6020),
(6667778888, 0, '2024-11-15', 'Diphenhydramine', 'None', '2024-11-20', 777888999, 6021),
(7778889999, 1, '2024-12-20', 'Cetirizine', 'Sulfa Drugs', '2024-12-25', 888999000, 6022),
(8889990000, 0, '2025-01-25', 'Omeprazole', 'Penicillin', '2025-01-30', 999000111, 6023),
(9990001111, 1, '2025-02-01', 'Simvastatin', 'None', '2025-02-05', 000111222, 6024),
(0001112222, 0, '2025-03-05', 'Atorvastatin', 'Aspirin', '2025-03-10', 111222330, 6025)