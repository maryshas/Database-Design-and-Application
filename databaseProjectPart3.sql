--database project 3
CREATE TABLE Person(
	SSN INT NOT NULL,
	DOB DATE NOT NULL,
	Name VARCHAR(255) NOT NULL,
	Address VARCHAR(255) NOT NULL,
	PhoneNumber VARCHAR(255) NOT NULL,
	Email VARCHAR(255),
	PRIMARY KEY (SSN)
	);

CREATE TABLE DentalProcedure(
	procID INT NOT NULL,
	procName VARCHAR(255),
	procedurePrice INT,
	--dentalProcedureBillingID INT NOT NULL,
	--dentalProcedureApptID INT NOT NULL,
	PRIMARY KEY (procID)
	--FOREIGN KEY (dentalProcedureBillingID) REFERENCES Billings(BillingID),
	--FOREIGN KEY (dentalProcedureApptID) REFERENCES Appointments(ApptID)
	);

CREATE TABLE Appointments(
	ApptID INT NOT NULL,
	ApptDate DATE NOT NULL,
	ApptTime VARCHAR(255) NOT NULL,
	Status VARCHAR(255) NOT NULL,
	AppointmentSSN INT NOT NULL,
	ProcedureID INT,
	PRIMARY KEY (ApptID),
	FOREIGN KEY (AppointmentSSN) REFERENCES Person(SSN),
	FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(procID)
	);

CREATE TABLE Billings(
	BillingID Int NOT NULL,
	BIllingDate DATE NOT NULL,
	AssignedDoctor VARCHAR(255),
	Amount FLOAT NOT NULL,
	AppointmentID INT NOT NULL,
	ProcedureID INT NOT NULL, 
	PRIMARY KEY (BillingID),
	FOREIGN KEY (AppointmentID) REFERENCES Appointments(ApptID),
	FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(procID)
	);

CREATE TABLE CompanyBills(
	BillID INT NOT NULL,
	PRIMARY KEY (BillID)
	);
	
CREATE TABLE Payments(
	PaymentID INT NOT NULL,
	Amount INT NOT NULL,
	PaymentDate DATE NOT NULL,
	InvoiceID INT NOT NULL,
	CompanyBillID INT NOT NULL,
	PaymentType VARCHAR(50) NOT NULL,
	PRIMARY KEY (PaymentID),
	FOREIGN KEY (CompanyBillID) REFERENCES CompanyBills(BillID),
	FOREIGN KEY (InvoiceID) REFERENCES Billings(BillingID)
	);

CREATE TABLE CreditCard (
	PaymentID INT NOT NULL,
	Number INT NOT NULL,
	CVV INT NOT NULL,
	EXP DATE NOT NULL,
	FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
	);
CREATE TABLE [Check](
	PaymentID INT NOT NULL,
	Check# INT NOT NULL,
	FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
	);
CREATE TABLE Cash(
	PaymentID INT NOT NULL,
	FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
	);

CREATE TABLE Utility(
	UtilityID INT NOT NULL,
	UtilityType VARCHAR(255) CHECK (UtilityType IN ('Gas','Water','Electric')),
	UtilityBillID INT NOT NULL,
	PRIMARY KEY (UtilityID),
	FOREIGN KEY (UtilityBillID) REFERENCES CompanyBills(BillID)
	);

CREATE TABLE Inventory(
	ItemID INT NOT NULL,
	InventoryName VARCHAR(255),
	--possible issue with check
	Quantity INT CHECK (Quantity >= 0),
	Cost DECIMAL(18, 2) CHECK (Cost >= 0),
	InventoryBillID INT NOT NULL,
	PRIMARY KEY (ItemID),
	FOREIGN KEY (InventoryBillID) REFERENCES CompanyBills(BillID)
	);

CREATE TABLE Rent(
	RentalCompanyName VARCHAR(255),
	RentBillID INT NOT NULL,
	FOREIGN KEY (RentBillID) REFERENCES CompanyBills(BillID)
	);

CREATE TABLE [Use](
	ProcedureID INT,
	ItemID INT,
	FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(procID),
	FOREIGN KEY (ItemID) REFERENCES Inventory(ItemID)
	);

CREATE TABLE InsurancePlan(
	policyID INT NOT NULL,
	CompanyName VARCHAR(255),
	PlanType VARCHAR(255),
	GroupNumber INT,
	CoverageDate DATE,
	InsuranceSSN INT NOT NULL,
	PRIMARY KEY (policyID),
	FOREIGN KEY (InsuranceSSN) REFERENCES Person(SSN)
	);

CREATE TABLE Employee(
	AccNum INT NOT NULL,
	--1 is true, 0 is false
	W2Completion BIT CHECK (W2Completion IN (0, 1)),
	ShiftSchedule VARCHAR(255),
	EmployeeSSN INT NOT NULL,
	FOREIGN KEY (EmployeeSSN) REFERENCES Person(SSN)
	);

CREATE TABLE MedicalProfessional(
	Type VARCHAR(255),
	License VARCHAR(255),
	ProfessionalSSN INT NOT NULL,
	FOREIGN KEY (ProfessionalSSN) REFERENCES Person(SSN)
	);

CREATE TABLE Patient(
	EmergencyContactInfo INT NOT NULL,
	--1 is true, 0 is false
	HIPPASigned BIT CHECK (HIPPASigned IN (0, 1)),
	ImagingDate DATE,
	Medications VARCHAR(255),
	AllergyInfo VARCHAR(255),
	LastUpdated DATE,
	PatientSSN INT NOT NULL,
	InsurancePlanID INT NOT NULL,
	FOREIGN KEY (PatientSSN) REFERENCES Person(SSN),
	FOREIGN KEY (InsurancePlanID) REFERENCES InsurancePlan(PolicyID)
	);

SELECT * FROM CreditCard;
SELECT * FROM [Check];
SELECT * FROM Cash;
SELECT * FROM Payments;
SELECT * FROM Billings;
SELECT * FROM CompanyBills;
SELECT * FROM Utility;
SELECT * FROM Inventory;
SELECT * FROM Rent;
SELECT * FROM [Use];
SELECT * FROM Appointments;
SELECT * FROM Dentalprocedure;
SELECT * FROM InsurancePlan;
SELECT * FROM Employee;
SELECT * FROM MedicalProfessional;
SELECT * FROM Person;
SELECT * FROM Patient;


--DROP TABLE CreditCard;
--DROP TABLE [Check];
--DROP TABLE Cash;
--DROP TABLE Payments;
--DROP TABLE Billings;
--DROP TABLE CompanyBills;
--DROP TABLE Utility;
--DROP TABLE Inventory;
--DROP TABLE Rent;
--DROP TABLE [Use];
--DROP TABLE Appointments;
--DROP TABLE Dentalprocedure;
--DROP TABLE InsurancePlan;
--DROP TABLE Employee;
--DROP TABLE MedicalProfessional;
--DROP TABLE Person;
--DROP TABLE Patient;
