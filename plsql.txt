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

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-12-26 23:35:50.778

-- tables
-- Table: Address
CREATE TABLE Address (
    AddressId integer  NOT NULL,
    StreetName varchar2(20)  NOT NULL,
    HouseNumber varchar2(5)  NOT NULL,
    FlatNumber varchar2(5)  NOT NULL,
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
    AdministratorName varchar2(20)  NOT NULL,
    AdministratorSurname varchar2(20)  NOT NULL,
    AdministratorNumber varchar2(20)  NOT NULL,
    AdministratorEmail varchar2(60)  NOT NULL,
    AdministratorSalary number(8,2)  NOT NULL,
    AdministratorBonus number(8,2)  NULL,
    CONSTRAINT Administrator_pk PRIMARY KEY (AdministratorId)
) ;

-- Table: City
CREATE TABLE City (
    CityId integer  NOT NULL,
    CityName varchar2(20)  NOT NULL,
    CONSTRAINT City_pk PRIMARY KEY (CityId)
) ;

-- Table: Course
CREATE TABLE Course (
    CourseId integer  NOT NULL,
    CourseName varchar2(50)  NOT NULL,
    DurationInWeeks smallint  NOT NULL,
    CONSTRAINT Course_pk PRIMARY KEY (CourseId)
) ;

-- Table: Customer
CREATE TABLE Customer (
    CustomerId integer  NOT NULL,
    CustomerName varchar2(20)  NOT NULL,
    CustomerSurname varchar2(20)  NOT NULL,
    Date_of_birth date  NULL,
    TelephoneNumber varchar2(20)  NOT NULL,
    CustomerEmail varchar2(60)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (CustomerId)
) ;

-- Table: Flat
CREATE TABLE Flat (
    FlatId integer  NOT NULL,
    FlatPrice number(8,2)  NOT NULL,
    RoomsNumber integer  NOT NULL,
    AddressId integer  NOT NULL,
    CONSTRAINT Flat_pk PRIMARY KEY (FlatId)
) ;

-- Table: Invoice
CREATE TABLE Invoice (
    InvoiceId integer  NOT NULL,
    InvoiceDate date  NOT NULL,
    InvoiceAmount number(8,2)  NOT NULL,
    ReservationId integer  NOT NULL,
    CONSTRAINT Invoice_pk PRIMARY KEY (InvoiceId)
) ;

-- Table: PaidType
CREATE TABLE PaidType (
    PaidTypeId integer  NOT NULL,
    PaidTypeName varchar2(30)  NOT NULL,
    CONSTRAINT PaidType_pk PRIMARY KEY (PaidTypeId)
) ;

-- Table: Payment
CREATE TABLE Payment (
    PaymentId integer  NOT NULL,
    PaymentAmount number(8,2)  NOT NULL,
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
VALUES (1, 'Monika', 'Nowak', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48-514-1617743', 'Monika1986@gmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (2, 'Ewa', 'Kowalczyk', TO_DATE('1999-05-04', 'YYYY-MM-DD'), '+48-961-2495658', 'kudottoppacre-5293@yopmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (3, 'Joanna', 'Szyma?ski', TO_DATE('1965-09-28', 'YYYY-MM-DD'), '+48-721-7288798', 'meinoigoleixu-2054@yopmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (4, 'Antoni', 'Jankowski', TO_DATE('2001-02-07', 'YYYY-MM-DD'), '+48-248-5654620', 'caitlin.woodward@octopus.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (5, 'Jakub', 'Koz?owski', NULL, '+48-759-0024319', 'jermaine.becker@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (6, 'Aleksander', 'Koz?owski', NULL, '+48-403-7011185', 'dashawn_blick@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (7, 'Filip', 'Kowalczyk', TO_DATE('1985-07-26', 'YYYY-MM-DD'), '+48-742-1407301', 'aaron.rowe@hotmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (8, 'Miko?aj', 'Bosko', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48-853-5607563', 'vincenzo.wolff39@hotmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (9, 'Wojciech', 'Bukoski', TO_DATE('1995-09-27', 'YYYY-MM-DD'), '+48-446-6415951', 'rosalyn50@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (10, 'Jan', 'Chlebek', TO_DATE('1998-10-23', 'YYYY-MM-DD'), '+48-160-7882237', 'kailee.murray@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (11, 'Magdalena', 'Czajka', NULL, '+48-833-6041967', 'adrian67@gmail.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (12, 'Agnieszka', 'Dubicki', NULL, '+48-710-2120913', 'amelie_maggio@yahoo.com');
INSERT INTO Customer (CustomerId, CustomerName, CustomerSurname, Date_of_birth, TelephoneNumber, CustomerEmail) 
VALUES (13, 'Monika Szulc', 'Fabian', TO_DATE('1993-03-07', 'YYYY-MM-DD'), '+48-986-2529564', 'kiara_feest@hotmail.com');


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
VALUES (1, TO_DATE('2022-03-16', 'YYYY-MM-DD'), TO_DATE('2022-04-16', 'YYYY-MM-DD'), 5, 3, 3);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (2, TO_DATE('2022-03-18', 'YYYY-MM-DD'), TO_DATE('2022-05-18', 'YYYY-MM-DD'), 9, 1, 9);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (3, TO_DATE('2022-03-20', 'YYYY-MM-DD'), TO_DATE('2022-04-20', 'YYYY-MM-DD'), 10, 2, 14);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (4, TO_DATE('2022-03-21', 'YYYY-MM-DD'), TO_DATE('2022-06-21', 'YYYY-MM-DD'), 11, 2, 11);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (5, TO_DATE('2022-03-25', 'YYYY-MM-DD'), TO_DATE('2022-06-25', 'YYYY-MM-DD'), 12, 4, 16);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (6, TO_DATE('2022-03-28', 'YYYY-MM-DD'), TO_DATE('2022-05-28', 'YYYY-MM-DD'), 8, 4, 7);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (7, TO_DATE('2022-04-01', 'YYYY-MM-DD'), TO_DATE('2022-05-01', 'YYYY-MM-DD'), 7, 3, 4);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (8, TO_DATE('2022-04-03', 'YYYY-MM-DD'), TO_DATE('2022-05-03', 'YYYY-MM-DD'), 6, 3, 5);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (9, TO_DATE('2022-04-09', 'YYYY-MM-DD'), TO_DATE('2022-06-09', 'YYYY-MM-DD'), 4, 2, 6);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (10, TO_DATE('2022-04-12', 'YYYY-MM-DD'), TO_DATE('2022-07-12', 'YYYY-MM-DD'), 2, 1, 10);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (11, TO_DATE('2022-04-15', 'YYYY-MM-DD'), TO_DATE('2022-08-15', 'YYYY-MM-DD'), 3, 1, 17);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (12, TO_DATE('2022-04-16', 'YYYY-MM-DD'), TO_DATE('2022-05-16', 'YYYY-MM-DD'), 1, 5, 20);
INSERT INTO Reservation (ReservationId, First_day, Last_day, CustomerId, AdministratorId, FlatId)
VALUES (13, TO_DATE('2022-04-19', 'YYYY-MM-DD'), TO_DATE('2022-06-19', 'YYYY-MM-DD'), 13, 4, 19);

INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (1, TO_DATE('2022-03-14', 'YYYY-MM-DD'), 3400, 1);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (2, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 7400, 2);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (3, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 1300, 3);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (4, TO_DATE('2022-03-19', 'YYYY-MM-DD'), 8100, 4);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (5, TO_DATE('2022-03-21', 'YYYY-MM-DD'), 6900, 5);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (6, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 5800, 6);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (7, TO_DATE('2022-03-26', 'YYYY-MM-DD'), 2300, 7);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (8, TO_DATE('2022-04-01', 'YYYY-MM-DD'), 2800, 8);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (9, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 6800, 9);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (10, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 8700, 10);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (11, TO_DATE('2022-04-12', 'YYYY-MM-DD'), 7600, 11);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (12, TO_DATE('2022-04-14', 'YYYY-MM-DD'), 1220, 12);
INSERT INTO Invoice (InvoiceId, InvoiceDate, InvoiceAmount, ReservationId)
VALUES (13, TO_DATE('2022-04-18', 'YYYY-MM-DD'), 5700, 13);

INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (1, 1, TO_DATE('2022-03-15', 'YYYY-MM-DD'), 3400, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (2, 2, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 7400, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (3, 3, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 1300, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (4, 4, TO_DATE('2022-03-19', 'YYYY-MM-DD'), 8100, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (5, 5, TO_DATE('2022-03-22', 'YYYY-MM-DD'), 6900, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (6, 6, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 5800, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (7, 7, TO_DATE('2022-03-28', 'YYYY-MM-DD'), 2300, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (8, 8, TO_DATE('2022-04-02', 'YYYY-MM-DD'), 2800, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (9, 9, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 6800, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (10, 10, TO_DATE('2022-04-10', 'YYYY-MM-DD'), 8700, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (11, 11, TO_DATE('2022-04-13', 'YYYY-MM-DD'), 7600, 1);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (12, 12, TO_DATE('2022-04-15', 'YYYY-MM-DD'), 1220, 2);
INSERT INTO Payment (PaymentId, InvoiceId, PaymentDate, PaymentAmount, PaidTypeId)
VALUES (13, 13, TO_DATE('2022-04-18', 'YYYY-MM-DD'), 5700, 2);


--this trigger allow us to add additional taxes to the cost of the flat when we add a new one.
--IF the flat we insert has less than 3 three rooms than we add 250, if 3 - 400
drop trigger Updating_with_taxes;
create or replace trigger Updating_with_taxes
before insert on Flat
for each row
begin 
if :new.RoomsNumber = 1 or :new.RoomsNumber = 2 then
:new.FlatPrice := :new.FlatPrice +250;
elsif :new.RoomsNumber = 3 then
:new.FlatPrice := :new.FlatPrice + 400;
end if;
end;


select * from administrator;
select * from flat;

--to check the condition if the flat has 2 rooms
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (21, 'Mroczna', '9', 3, 1);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (21, 1900, 2, 21);
--to check the condition if the flat has 3 rooms
INSERT INTO Address (AddressId, StreetName, HouseNumber, FlatNumber, CityId) VALUES (22, 'Lisa-Kuli', '17', 3, 1);
INSERT INTO Flat (FlatId, FlatPrice, RoomsNumber, AddressId) 
VALUES (22, 2500 , 3, 22);
select * from flat;

delete from flat where FlatId = 21;
delete from address where AddressId = 21;
delete from flat where FlatId = 22;
delete from address where AddressId = 22;


--this trigger does not allow us to update or insert administrator with a too low salary(less than 1000)
CREATE OR REPLACE TRIGGER UpdateAdministrator
BEFORE INSERT OR UPDATE ON Administrator
FOR EACH ROW
DECLARE 
sal Administrator.AdministratorSalary%type;
BEGIN                  
    sal := :new.AdministratorSalary;
    IF sal < 1000 THEN
        IF INSERTING THEN
            Raise_application_error(-20100, 'Administrator salary is too low!');
        ELSIF UPDATING THEN
            :new.AdministratorSalary := :old.AdministratorSalary;
            Raise_application_error(-20100, 'New Administrator salary is too low');
        END IF;
    END IF;    
END;

INSERT INTO Administrator (AdministratorId, AdministratorName, AdministratorSurname, AdministratorNumber, AdministratorEmail, AdministratorSalary, AdministratorBonus) 
VALUES (6, 'Kirill', 'Lewandowski', 'ad006', 'ad006@gmail.com', 900, null);

UPDATE ADMINISTRATOR SET AdministratorSalary = 900 where AdministratorId = 1;

--this procedure help us to know the number of invoices in given dates
drop procedure countInvoiceInGivenMonth;
set serveroutput on
CREATE OR REPLACE PROCEDURE countInvoiceInGivenMonth 
(startMonth INT, endMonth INT)
AS
v_count INT := 0;
BEGIN
	SELECT COUNT(1) INTO v_count
	FROM Invoice
	WHERE EXTRACT(MONTH FROM InvoiceDate) between startMonth and endMonth;
	DBMS_OUTPUT.put_line(v_count);
END;
SELECT * FROM Invoice;
CALL countInvoiceInGivenMonth(4, 5);


--this procedure help us to control the bonuses of the administrator.
--The input value of the procedure is the amount of money( sum of invoice amount).
--The administrator should have sum of invoices more than given value. If his bonus is null
--than he may get a bonus 10 if not, to his bonus we add 5.
CREATE OR REPLACE PROCEDURE addBonus
(point Invoice.InvoiceAmount%Type)
AS
CURSOR cur IS SELECT administratorId, administratorSalary, administratorBonus 
from Administrator a
where administratorId in (
select administratorId 
from reservation r
inner join invoice i on r.reservationId = i.reservationId
group by r.administratorId
having sum(invoiceAmount) > point
);
v_administratorId Int; 
v_AdministratorSalary Administrator.AdministratorSalary%Type; 
v_AdministratorBonus Administrator.AdministratorBonus%Type;
BEGIN
	OPEN cur;
    LOOP
        FETCH cur INTO v_administratorId, v_AdministratorSalary, v_AdministratorBonus;
        EXIT WHEN cur%NOTFOUND;
		IF v_AdministratorBonus IS NULL THEN          
			UPDATE Administrator SET AdministratorBonus = 10 WHERE administratorId = v_administratorId;
		ELSIF v_AdministratorBonus IS NOT NULL THEN
			UPDATE Administrator SET AdministratorBonus = v_AdministratorBonus + 5 WHERE administratorId = v_administratorId;
		END IF;	
	END LOOP;	
	CLOSE cur;
END;

select * from administrator;

select administratorId 
from reservation r
inner join invoice i on r.reservationId = i.reservationId
group by r.administratorId
having sum(invoiceAmount) > 19000;

select * from invoice;

CALL addBonus(18000);








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

