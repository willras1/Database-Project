use project1;

-- Find the position and last name of employees that have done any maintenance
SELECT m.EmployeeID, e.EmployeeLName, e.EmployeeFName 
FROM Maintenance_records m
JOIN Employee e
ON m.EmployeeID = e.EmployeeID;


-- Retrieve all vehicle makes and models rented from the Gilead, NY office
SELECT v.Make, v.Model, o.City, o.State 
FROM Vehicle v
JOIN Reserves r 
ON r.VIN = v.VIN
JOIN Reservation re
ON re.ReservationID = r.ReservationID
JOIN Rental_Office o
ON o.OfficeID = re.OfficeID
WHERE re.OfficeID = 2;


-- Retrieve vehicle license plate number, year, make, model, and mileage if the car was made before 2017 (should give 4 cars)
SELECT LicensePlate, Year, Make, Model, Mileage 
FROM Vehicle
WHERE YEAR < 2017;

-- Retrieve customer Barry Allen's last name, first name, email, reservation rate and pick up date
SELECT c.CustomerLName, c.CustomerFName, c.CustomerEmail, r.Daily_Rate, r.Pick_Up_Date 
FROM Customer c
JOIN Reservation r
ON r.CustomerID = c.CustomerID
WHERE c.CustomerLName = 'Allen' AND c.CustomerFName = 'Barry';

-- Retrieve all cars license plates, makes, and models that have had an oil change
SELECT v.LicensePlate, v.Make, v.Model, m.Maintenance_Procedure
FROM Vehicle v
JOIN Maintenance_records m
ON m.VIN = v.VIN
WHERE m.Maintenance_Procedure = 'Oil Change';
