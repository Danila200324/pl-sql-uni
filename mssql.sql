
DROP TABLE PAYMENT;
DROP TABLE PAIDTYPE;
DROP TABLE INVOICE;
DROP TABLE RESERVATION;
DROP TABLE FLAT;
DROP TABLE ADDRESS;
DROP TABLE CITY;
DROP TABLE CUSTOMER;
DROP TABLE ADMINCOURSE;
DROP TABLE ADMINISTRATOR;
DROP TABLE COURSE;


CREATE TABLE Address (
    AddressId integer  NOT NULL,
    StreetName varchar(20)  NOT NULL,
    HouseNumber varchar(5)  NOT NULL,
    FlatNumber varchar(5)  NOT NULL,
    CityId integer  NOT NULL,
    CONSTRAINT Address_pk PRIMARY KEY (AddressId)
) ;

-- Table: AdminCourse
CREATE TABLE AdminCourse (
    CourseId integer  NOT NULL,
    AdministratorId integer  NOT NULL,
    CONSTRAINT AdminCourse_pk PRIMARY KEY (CourseId,AdministratorId)
) ;

-- Table: Administrator
CREATE TABLE Administrator (
    AdministratorId integer  NOT NULL,
    AdministratorName varchar(20)  NOT NULL,
    AdministratorSurname varchar(20)  NOT NULL,
    AdministratorNumber varchar(20)  NOT NULL,
    AdministratorEmail varchar(60)  NOT NULL,
    AdministratorSalary numeric(8,2)  NOT NULL,
    AdministratorBonus numeric(8,2)  NULL,
    CONSTRAINT Administrator_pk PRIMARY KEY (AdministratorId)
) ;

-- Table: City
CREATE TABLE City (
    CityId integer  NOT NULL,
    CityName varchar(20)  NOT NULL,
    CONSTRAINT City_pk PRIMARY KEY (CityId)
) ;

-- Table: Course
CREATE TABLE Course (
    CourseId integer  NOT NULL,
    CourseName varchar(50)  NOT NULL,
    DurationInWeeks smallint  NOT NULL,
    CONSTRAINT Course_pk PRIMARY KEY (CourseId)
) ;

-- Table: Customer
CREATE TABLE Customer (
    CustomerId integer  NOT NULL,
    CustomerName varchar(20)  NOT NULL,
    CustomerSurname varchar(20)  NOT NULL,
    Date_of_birth date  NULL,
    TelephoneNumber varchar(20)  NOT NULL,
    CustomerEmail varchar(60)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (CustomerId)
) ;

-- Table: Flat
CREATE TABLE Flat (
    FlatId integer  NOT NULL,
    FlatPrice numeric(8,2)  NOT NULL,
    RoomsNumber integer  NOT NULL,
    AddressId integer  NOT NULL,
    CONSTRAINT Flat_pk PRIMARY KEY (FlatId)
) ;

-- Table: Invoice
CREATE TABLE Invoice (
    InvoiceId integer  NOT NULL,
    InvoiceDate date  NOT NULL,
    InvoiceAmount numeric(8,2)  NOT NULL,
    ReservationId integer  NOT NULL,
    CONSTRAINT Invoice_pk PRIMARY KEY (InvoiceId)
) ;

-- Table: PaidType
CREATE TABLE PaidType (
    PaidTypeId integer  NOT NULL,
    PaidTypeName varchar(30)  NOT NULL,
    CONSTRAINT PaidType_pk PRIMARY KEY (PaidTypeId)
) ;

-- Table: Payment
CREATE TABLE Payment (
    PaymentId integer  NOT NULL,
    PaymentAmount numeric(8,2)  NOT NULL,
    PaymentDate date  NOT NULL,
    InvoiceId integer  NOT NULL,
    PaidTypeId integer  NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (PaymentId)
) ;

-- Table: Reservation
CREATE TABLE Reservation (
    ReservationId integer  NOT NULL,
    First_day date  NOT NULL,
    Last_day date  NOT NULL,
    CustomerId integer  NOT NULL,
    FlatId integer  NOT NULL,
    AdministratorId integer  NOT NULL,
    CONSTRAINT Reservation_pk PRIMARY KEY (ReservationId)
) ;

-- foreign keys
-- Reference: Address_City (table: Address)
ALTER TABLE Address ADD CONSTRAINT Address_City
    FOREIGN KEY (CityId)
    REFERENCES City (CityId);

-- Reference: AdminCourse_Administrator (table: AdminCourse)
ALTER TABLE AdminCourse ADD CONSTRAINT AdminCourse_Administrator
    FOREIGN KEY (AdministratorId)
    REFERENCES Administrator (AdministratorId);

-- Reference: AdminCourse_Course (table: AdminCourse)
ALTER TABLE AdminCourse ADD CONSTRAINT AdminCourse_Course
    FOREIGN KEY (CourseId)
    REFERENCES Course (CourseId);

-- Reference: Flat_Address (table: Flat)
ALTER TABLE Flat ADD CONSTRAINT Flat_Address
    FOREIGN KEY (AddressId)
    REFERENCES Address (AddressId);

-- Reference: Invoice_Reservation (table: Invoice)
ALTER TABLE Invoice ADD CONSTRAINT Invoice_Reservation
    FOREIGN KEY (ReservationId)
    REFERENCES Reservation (ReservationId);

-- Reference: Payment_Invoice (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Invoice
    FOREIGN KEY (InvoiceId)
    REFERENCES Invoice (InvoiceId);

-- Reference: Payment_PaidType (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_PaidType
    FOREIGN KEY (PaidTypeId)
    REFERENCES PaidType (PaidTypeId);

-- Reference: Reservation_Administrator (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Administrator
    FOREIGN KEY (AdministratorId)
    REFERENCES Administrator (AdministratorId);

-- Reference: Reservation_Customer (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Customer
    FOREIGN KEY (CustomerId)
    REFERENCES Customer (CustomerId);

-- Reference: Reservation_Flat (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Flat
    FOREIGN KEY (FlatId)
    REFERENCES Flat (FlatId);

-- End of file.
INSERT INTO City (CityId, CityName) VALUES (1, 'Warsaw');
INSERT INTO City (CityId, CityName) VALUES (2, 'Gdansk');
INSERT INTO City (CityId, CityName) VALUES (3, 'Poznan');
INSERT INTO City (CityId, CityName) VALUES (4, 'Krakow');
INSERT INTO City (CityId, CityName) VALUES (5, 'Wroclaw');
    
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (1, 'Mroczna', '5', 58, 1); 
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (2, 'Elekcyjna', '2', 24, 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (3, 'Kolejowa', '4', 46, 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (4, 'Luska', '3', 17, 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (5, 'Ogrodowa', '1', 3, 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (6, 'Walicow', '5', 39 , 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (7, 'Panska', '2', 24, 1);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (8, 'Narwik', '5', 58 , 2);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (9, 'Narwik', '6', 64, 2);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (10,'Zerazna', '7', 78, 3);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (11,'Walowa', '4', 33, 4);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (12,'Doki', '9', 94, 5);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (13,'Wodopoj', '4', 40, 5);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (14,'Kupiecka', '8', 84, 5);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (15,'Saperow', '3', 36, 5);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (16,'Sucha', '4', 48, 4);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (17,'Czysta', '2', 29, 4);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (18,'Podwale', '3', 47, 2);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (19,'Sadowa', '4', 59, 2);
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (20,'Prosta', '2', 31, 2);

    
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (1, 3400, 3, 1);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (2, 3800, 3, 2);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (3, 3400, 3, 3);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (4, 2300, 2, 4);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (5, 2800, 2, 5);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (6, 3400, 3, 6);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (7, 2900, 2, 7);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (8, 1900, 1, 8);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (9, 3700, 3, 9);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (10, 2900, 2, 10);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (11, 2700,2, 11);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (12, 3500, 3, 12);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (13, 2400, 2, 13);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (14, 1300, 1, 14);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (15, 1250, 1, 15);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (16, 2300, 2, 16);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (17, 1900, 1, 17);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (18, 1700, 1, 18);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (19, 2850, 2, 19);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (20, 1220, 1, 20);

INSERT INTO PaidType (PaidTypeId, PaidTypeName) VALUES (1, 'Cash');
INSERT INTO PaidType (PaidTypeId, PaidTypeName) VALUES (2, 'Account_transfer');

INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (1, 'Monika', 'Nowak', '1986-07-23', '+48-514-1617743', 'Monika1986@gmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (2, 'Ewa', 'Kowalczyk', '1999-05-04', '+48-961-2495658', 'kudottoppacre-5293@yopmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (3, 'Joanna', 'Szyma?ski', '1965-09-28', '+48-721-7288798', 'meinoigoleixu-2054@yopmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (4, 'Antoni', 'Jankowski', '2001-02-07', '+48-248-5654620', 'caitlin.woodward@octopus.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (5, 'Jakub', 'Koz?owski', NULL, '+48-759-0024319', 'jermaine.becker@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (6, 'Aleksander', 'Koz?owski', NULL, '+48-403-7011185', 'dashawn_blick@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (7, 'Filip', 'Kowalczyk', '1985-07-26', '+48-742-1407301', 'aaron.rowe@hotmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (8, 'Miko?aj', 'Bosko', '1986-07-23', '+48-853-5607563', 'vincenzo.wolff39@hotmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (9, 'Wojciech', 'Bukoski', '1995-09-27', '+48-446-6415951', 'rosalyn50@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (10, 'Jan', 'Chlebek', '1998-10-23', '+48-160-7882237', 'kailee.murray@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (11, 'Magdalena', 'Czajka', NULL, '+48-833-6041967', 'adrian67@gmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (12, 'Agnieszka', 'Dubicki', NULL, '+48-710-2120913', 'amelie_maggio@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (13, 'Monika Szulc', 'Fabian', '1993-03-07', '+48-986-2529564', 'kiara_feest@hotmail.com');


INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (1, 'Aleksy', 'Nowak', 'ad001', 'ad001@gmail.com', 2000, null);
INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (2, 'Jan', 'Kowalski', 'ad002', 'ad002@gmail.com', 2500, null);
INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (3, 'Aleksy', 'Kaminski', 'ad003', 'ad003@gmail.com', 1800, null);
INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (4, 'Marek', 'Wozniak', 'ad004', 'ad004@gmail.com', 1500, null);
INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (5, 'Michal', 'Lewandowski', 'ad005', 'ad005@gmail.com', 2800, null);

INSERT INTO Course (CourseId, CourseName, DurationInWeeks) 
VALUES (1, 'Сorporate Сulture', 8);
INSERT INTO Course (CourseId, CourseName, DurationInWeeks) 
VALUES (2, 'Business etiquette/Organization of proctol events', 12);
INSERT INTO Course (CourseId, CourseName, DurationInWeeks) 
VALUES (3, 'Сommunication Standard And Marketing', 20);


INSERT INTO AdminCourse(AdministratorId, CourseId) 
VALUES (1, 1);
INSERT INTO  AdminCourse(AdministratorId, CourseId) 
VALUES (2, 1);
INSERT INTO  AdminCourse(AdministratorId, CourseId) 
VALUES (3, 1);
INSERT INTO  AdminCourse(AdministratorId, CourseId)
VALUES (3, 2);
INSERT INTO AdminCourse(AdministratorId, CourseId)
VALUES (4, 3);
INSERT INTO AdminCourse(AdministratorId, CourseId) 
VALUES (5, 2);  

INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (1, '2022-03-16', '2022-04-16', 5, 3, 3);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (2, '2022-03-18', '2022-05-18', 9, 1, 9);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (3, '2022-03-20', '2022-04-20', 10, 2, 14);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (4, '2022-03-21', '2022-06-21', 11, 2, 11);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (5, '2022-03-25', '2022-06-25', 12, 4, 16);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (6, '2022-03-28', '2022-05-28', 8, 4, 7);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (7, '2022-04-01', '2022-05-01', 7, 3, 4);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (8, '2022-04-03', '2022-05-03', 6, 3, 5);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (9, '2022-04-09', '2022-06-09', 4, 2, 6);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (10, '2022-04-12', '2022-07-12', 2, 1, 10);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (11, '2022-04-15', '2022-08-15', 3, 1, 17);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (12, '2022-04-16', '2022-05-16', 1, 5, 20);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (13, '2022-04-19', '2022-06-19', 13, 4, 19);

INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (1, '2022-03-14', 3400, 1);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (2, '2022-03-17', 7400, 2);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (3, '2022-03-17', 1300, 3);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (4, '2022-03-19', 8100, 4);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (5, '2022-03-21', 6900, 5);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (6, '2022-03-25', 5800, 6);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (7, '2022-03-26', 2300, 7);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (8, '2022-04-01', 2800, 8);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (9, '2022-04-07', 6800, 9);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (10, '2022-04-07', 8700, 10);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (11, '2022-04-12', 7600, 11);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (12, '2022-04-14', 1220, 12);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (13, '2022-04-18', 5700, 13);

INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (1, 1, '2022-03-15', 3400, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (2, 2, '2022-03-17', 7400, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (3, 3, '2022-03-18', 1300, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (4, 4, '2022-03-19', 8100, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (5, 5, '2022-03-22', 6900, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (6, 6, '2022-03-25', 5800, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (7, 7, '2022-03-28', 2300, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (8, 8, '2022-04-02', 2800, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (9, 9, '2022-04-07', 6800, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (10, 10,'2022-04-10', 8700, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (11, 11,'2022-04-13', 7600, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (12, 12,'2022-04-15', 1220, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (13, 13,'2022-04-18', 5700, 2);

drop table SumOfReservationFinalPrices;
--this trigger controls all the changes with table Invoice and add the date when the changes were
--done and the sum amount of all invoices
CREATE TABLE SumOfReservationFinalPrices (updateTime date not null, currentValue INT NOT NULL);

GO
CREATE TRIGGER trig1 ON Invoice
FOR INSERT, UPDATE, DELETE 
AS
BEGIN
	insert into SumOfReservationFinalPrices(updateTime, currentValue)
	VALUES ( GETDATE() , (SELECT SUM(InvoiceAmount) FROM Invoice));
END
GO

SELECT * FROM Invoice;
SELECT * FROM SumOfReservationFinalPrices;
UPDATE Invoice SET InvoiceAmount = 6000 WHERE InvoiceId = 1;
SELECT * FROM Invoice;
SELECT * FROM SumOfReservationFinalPrices;
DROP TRIGGER trig1;
DROP TABLE SumOfReservationFinalPrices;



--Write a trigger that will not allow inserting a new adminitrator 
--with an existing email in the administrator table as well as changing 
--the administrator with existing email
GO
CREATE TRIGGER trig2 ON Administrator 
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS (SELECT 1
			   FROM inserted i LEFT JOIN deleted d ON i.AdministratorId = d.AdministratorId
			   WHERE d.AdministratorId IS NULL AND EXISTS 
			   (SELECT 1 FROM Administrator a 
			    WHERE a.AdministratorEmail = i.AdministratorEmail AND a.AdministratorId != i.AdministratorId))
	BEGIN
		Raiserror ('Error! It is not possible to add an administrator with this email ', 1, 1)
		ROLLBACK
	END
	IF EXISTS (SELECT 1
			   FROM inserted i JOIN deleted d ON i.AdministratorId = d.AdministratorId
			   WHERE EXISTS (SELECT 1
							 FROM Administrator a 
							 WHERE a.AdministratorEmail = i.AdministratorEmail AND a.AdministratorId != i.AdministratorId))
	BEGIN
		Raiserror ('Error! It is not possible to change the administrator email to the specified one', 1, 1)
		ROLLBACK
	END		   
END
GO

select * from administrator;
INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (6, 'Tobby', 'Lewandoski', 'ad006', 'ad005@gmail.com', 2500, null);
UPDATE Administrator set AdministratorEmail = 'ad005@gmail.com' where AdministratorId = 4;




--this procedure create some kind of caskade(like in the hibernate). It can be really helpfull in programming, for example on java, because
--when we connect our programm to the database without using jpa, we should be really carefully with such operations as deleting(very popular problem in jdbc),
--because the another table can contain the foreign key of this table
go
create PROCEDURE invoiceCascade (@id INTEGER)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM INVOICE WHERE InvoiceId = @id)
	BEGIN
		IF EXISTS (SELECT 1 FROM PAYMENT WHERE InvoiceId = @Id)
		begin
		delete payment where InvoiceId = @Id;
		delete invoice where InvoiceId = @Id;
		end
		else
		begin
		delete invoice where InvoiceId = @Id;
		end
	END
	ELSE
	BEGIN
	Raiserror ('Error! There is no invoice with such Id', 1, 1);
	END
END
go

--exec MasterInsertUpdateDelete 7
select * from payment;
select * from invoice;


INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (14, '2022-09-17', 7400, 2);

INSERT INTO Payment (PaymentId, PaymentAmount, PaymentDate, InvoiceId, PaidTypeId)
VALUES (14, 7400, '2022-09-17', 14, 1);

exec invoiceCascade 14; 
delete invoice where InvoiceId = 14;




--this procedure is really helpfull for changing the prices of the flats
--The first parameter is the coefficent that can increase or decrease the price.
--The second parameter is the city by which we select our flats. 
--The idea of the trigger is that prices for renting are various in different cities by many reasons
--and we may control them by one procedure

GO
CREATE PROCEDURE changePrice (@point numeric(8,3), @city varchar(20))
AS
BEGIN
	DECLARE cur CURSOR FOR (select flatId, flatPrice, roomsNumber from flat
where addressId in (select addressId from address
where cityId = (select cityId from City where upper(CityName) = @city)));
	OPEN cur
	DECLARE @flatId INT, @flatPrice numeric(8,3), @roomsNumber INT
	FETCH NEXT FROM cur INTO @flatId, @flatPrice, @roomsNumber
	WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE flat SET flatPrice = @flatPrice * @point WHERE flatId = @flatId;
			FETCH NEXT FROM cur INTO @flatId, @flatPrice, @roomsNumber
		END;
	CLOSE cur
	DEALLOCATE cur
END
GO

drop procedure changePrice;


select * from flat;
exec changePrice 1.2, 'WARSAW';

select flatId, flatPrice, roomsNumber from flat
where addressId in (select addressId from address
where cityId = (select cityId from City where upper(CityName) = 'WARSAW'));









	
		




