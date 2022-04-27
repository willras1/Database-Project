--SELECT * FROM Employee;

use project1;

-- Vehicles
--done
INSERT INTO Vehicle VALUES('11111AAAAA', 'Honda', 'Accord', '2014', 'Gold', 'AA11BB22', '27365');
INSERT INTO Vehicle VALUES('22222BBBBB', 'Hyundai', 'Veloster', '2016', 'Blue', 'BB22CC33', '13569');
INSERT INTO Vehicle VALUES('33333CCCCC', 'Chevy', 'Tahoe', '2012', 'Black', 'CC33DD44', '19999');
INSERT INTO Vehicle VALUES('44444DDDDD', 'Audi', 'A4', '2017', 'Silver', 'DD44EE55', '567');
INSERT INTO Vehicle VALUES('55555EEEEE', 'Dodge', 'Charger', '2015', 'Purple', 'EE55FF66', '32641');


-- Employee
--done
INSERT INTO Employee VALUES(01, 'Victor', 'Stone', 'Office Manager', '999990006');
INSERT INTO Employee VALUES(02, 'Arthur', 'Curry', 'Office Manager', '999990007');
INSERT INTO Employee VALUES(03, 'Kara', 'Danvers', 'Office Manager', '999990008');
INSERT INTO Employee VALUES(04, 'Pamela', 'Isley', 'Office Manager', '999990009');
INSERT INTO Employee VALUES(05, 'Barbara', 'Gordon', 'Customer Care Specialist', '999990010');
INSERT INTO Employee VALUES(06, 'Harleen', 'Quinzel', 'Customer Care Specialist', '999990011');
INSERT INTO Employee VALUES(07, 'John', 'Jones', 'Customer Care Specialist', '999990012');
INSERT INTO Employee VALUES(08, 'Oliver', 'Queen', 'Customer Care Specialist', '999990014');
INSERT INTO Employee VALUES(09, 'Bruce', 'Wayne', 'Mechanic', '999990015');
INSERT INTO Employee VALUES(10, 'Clark', 'Kent', 'Mechanic', '999990016');
INSERT INTO Employee VALUES(11, 'Lex', 'Luthor', 'Mechanic', '999990017');
INSERT INTO Employee VALUES(12, 'Edward', 'Nygma', 'Mechanic', '999990018');

-- Reservation   date format year-month-day
--DONE
INSERT INTO Reservation VALUES(01, '2017-06-06', '2017-06-17', 125.00, 875.00, 000001, 03);
INSERT INTO Reservation VALUES(02, '2017-03-01', '2017-03-03', 95.00, 285.00, 000002, 01);
INSERT INTO Reservation VALUES(03, '2017-05-04', '2017-05-10', 80.00, 1120.00, 000003, 04);
INSERT INTO Reservation VALUES(04, '2017-06-06', '2017-06-13', 125.23, 876.61, 000004, 02);
INSERT INTO Reservation VALUES(05, '2017-07-22', '2017-07-27', 115.16, 575.80, 000005, 03);
INSERT INTO Reservation VALUES(06, '2022-08-19', '2022-08-23', 95.72, 382.88, 000006, 02);


--Employed
--done 
INSERT INTO Employed VALUES('01', '01');
INSERT INTO Employed VALUES('01', '05');
INSERT INTO Employed VALUES('01', '09');
INSERT INTO Employed VALUES('02', '02');
INSERT INTO Employed VALUES('02', '06');
INSERT INTO Employed VALUES('02', '10');
INSERT INTO Employed VALUES('03', '03');
INSERT INTO Employed VALUES('03', '07');
INSERT INTO Employed VALUES('03', '11');
INSERT INTO Employed VALUES('04', '04');
INSERT INTO Employed VALUES('04', '08');
INSERT INTO Employed VALUES('04', '12');


--Maintenance Records
--done
INSERT INTO Maintenance_records VALUES(01, 09, '11111AAAAA', '2016-05-08', 'Oil Change');
INSERT INTO Maintenance_records VALUES(02, 10, '22222BBBBB', '2019-07-27', 'Tire Replacement');
INSERT INTO Maintenance_records VALUES(03, 11, '33333CCCCC', '2022-11-28', 'Annual Maintenance');
INSERT INTO Maintenance_records VALUES(04, 12, '44444DDDDD', '2021-02-13', 'Alignment Check');


-- Reserves
--not done -------------
INSERT INTO Reserves VALUES('11111AAAAA', 01);
INSERT INTO Reserves VALUES('22222BBBBB', 02);
INSERT INTO Reserves VALUES('33333CCCCC', 03);
INSERT INTO Reserves VALUES('44444DDDDD', 04);
INSERT INTO Reserves VALUES('55555EEEEE', 05);
INSERT INTO Reserves VALUES('33333CCCCC', 06);


-- Rental_Office
--DONE
INSERT INTO Rental_Office VALUES(01, '123 Paper Street', 'Portland', 'OR', '8083394439');
INSERT INTO Rental_Office VALUES(02, '19 Tower Lane', 'Gilead', 'NY', '2136803349');
INSERT INTO Rental_Office VALUES(03, '237 Overlook View', 'Estes Park', 'CO', '9018662245');
INSERT INTO Rental_Office VALUES(04, '1 Pennywise Circle', 'Derry', 'ME', '8014439755');
INSERT INTO Rental_Office VALUES(05, '983 N. Winderburgh', 'Hobleton', 'IL', '3132349000');
INSERT INTO Rental_Office VALUES(06, '54 East 23 South', 'Brooklyn', 'NY', '7143394520');


-- Customers
--done
INSERT INTO Customer VALUES(000001, 'John', 'Constantine', 'jconstantine@jld.org', '999990013', 'A10225CC0013');
INSERT INTO Customer VALUES(000002, 'Hal', 'Jordan', 'hjordan@glcorps.org', '999990001', 'SS99948001');
INSERT INTO Customer VALUES(000003, 'Barry', 'Allen', 'ballen@jla.org', '999990002', '2B233000GH94852');
INSERT INTO Customer VALUES(000004, 'Dinah', 'Lance', 'dlance@jla.org', '999990003', 'GH990000003');
INSERT INTO Customer VALUES(000005, 'Felicity', 'Smoak', 'fsmoak@palmer_tech.com', '999990004', '24525DGE4');
INSERT INTO Customer VALUES(000006, 'Zatanna', 'Zatara', 'zzatara@jld.org', '999990005', '233490FF33');






