CREATE TABLE Vehicle (
  VIN          VARCHAR(30) NOT NULL,
  Make         VARCHAR(30) NOT NULL,
  Model        VARCHAR(30) NOT NULL,
  Year         INT NOT NULL,
  Color        CHAR(30) NOT NULL, 
  LicensePlate VARCHAR(20) NOT NULL, 
  Mileage      INT NOT NULL,  
  CONSTRAINT Vehicle_Vin_pk PRIMARY KEY (VIN),
  CONSTRAINT Vehicle_Unique UNIQUE (LicensePlate)
);


CREATE TABLE Employee (
  EmployeeID      INT NOT NULL,
  EmployeeFName   VARCHAR(100) NOT NULL,  
  EmployeeLName   VARCHAR(100) NOT NULL,
  Title           VARCHAR(100) NOT NULL,
  SSN             INT NOT NULL,
  CONSTRAINT Employee_EmployeeID_pk PRIMARY KEY (EmployeeID),
  CONSTRAINT Employee__Unique UNIQUE (SSN)
);


CREATE TABLE Employed(
  OfficeID   INT NOT NULL,
  EmployeeID INT NOT NULL,
  CONSTRAINT Employed_OfficeEmployeeID_pk PRIMARY KEY (OfficeID, EmployeeID),
  CONSTRAINT Employed_OfficeID_fk FOREIGN KEY(OfficeID) REFERENCES Rental_Office(OfficeID),
  CONSTRAINT Employed_EmployeeID_fk FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)  
); 



CREATE TABLE Customer(
  CustomerID        INT NOT NULL,
  CustomerFName     VARCHAR(100) NOT NULL,
  CustomerLName     VARCHAR(100) NOT NULL,
  CustomerEmail     VARCHAR(200) NOT NULL,
  DriversLicense    VARCHAR(50) NOT NULL,  
  InsurancePolicyNo VARCHAR(50) NOT NULL,  
  CONSTRAINT Customer_CustomerID_pk PRIMARY KEY (CustomerID),
  CONSTRAINT Customer__Unique UNIQUE (DriversLicense)  
);



CREATE TABLE Rental_Office(
  OfficeID      INT NOT NULL,
  StreetAddress VARCHAR(200) NOT NULL,
  City          VARCHAR(100) NOT NULL,
  State         VARCHAR(100) NOT NULL,
  PhoneNo       VARCHAR(200) NOT NULL,
  CONSTRAINT Rental_Office_OfficeID_pk PRIMARY KEY (OfficeID)
);


CREATE TABLE Maintenance_records(
  Maintenance_ID        INT NOT NULL,
  EmployeeID            INT NOT NULL,
  VIN                   VARCHAR(30) NOT NULL,
  Maintenance_Date      DATE NOT NULL,
  Maintenance_Procedure VARCHAR(200) NOT NULL,
  CONSTRAINT Maintenance_Maintenance_ID_pk PRIMARY KEY (Maintenance_ID),  
  CONSTRAINT Maintenance_EmployeeID_fk FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID),
  CONSTRAINT Maintenance_Vin_fk FOREIGN KEY(VIN) REFERENCES Vehicle(VIN)  
);


CREATE TABLE Reservation(
  ReservationID  INT NOT NULL,
  Pick_Up_Date   DATE NOT NULL,
  Return_Date    DATE NOT NULL,
  Daily_Rate     DECIMAL(20,2) NOT NULL,
  Total          DECIMAL(20,2) NOT NULL,
  CustomerID     INT NOT NULL,
  OfficeID       INT NOT NULL,
  CONSTRAINT Reservation_ReservationID_pk PRIMARY KEY (ReservationID),  
  CONSTRAINT Reservation_CustomerID_fk FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
  CONSTRAINT Reservation_OfficeID_fk FOREIGN KEY(OfficeID) REFERENCES Rental_Office(OfficeID)    
);


CREATE TABLE Reserves(
  VIN            VARCHAR(30) NOT NULL,
  ReservationID  INT NOT NULL,
  CONSTRAINT Reserves_Vin_ReservationID_pk PRIMARY KEY (VIN, ReservationID),
  CONSTRAINT Reserves_Vin_fk FOREIGN KEY(VIN) REFERENCES Vehicle(VIN),
  CONSTRAINT Reserves_ReservationID_fk FOREIGN KEY(ReservationID) REFERENCES Reservation(ReservationID)  
);
