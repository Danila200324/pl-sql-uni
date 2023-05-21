ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
-- Table: Administrator
CREATE TABLE Administrator (
    Administrator_id integer  NOT NULL,
    Administrator_name varchar2(50)  NOT NULL,
    Administrator_surname varchar2(50)  NOT NULL,
    Administrator_number varchar2(50)  NOT NULL,
    Administrator_Email varchar2(60)  NOT NULL,
    CONSTRAINT Administrator_pk PRIMARY KEY (Administrator_id)
) ;

-- Table: City
CREATE TABLE City (
    City_id integer  NOT NULL,
    City_name varchar2(20)  NOT NULL,
    CONSTRAINT City_pk PRIMARY KEY (City_id)
) ;

-- Table: Customer
CREATE TABLE Customer (
    Customer_id integer  NOT NULL,
    Customer_name varchar2(20)  NOT NULL,
    Customer_surname varchar2(20)  NOT NULL,
    Date_of_birth date  NULL,
    Customer_Number varchar2(20)  NOT NULL,
    Customer_Email varchar2(50)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_id)
) ;

-- Table: Flat
CREATE TABLE Flat (
    Flat_id integer  NOT NULL,
    Flat_price number(7,2)  NOT NULL,
    Rooms_number integer  NOT NULL,
    Street_name varchar2(20)  NOT NULL,
    House_number varchar2(20)  NOT NULL,
    Flat_number integer  NOT NULL,
    City_id integer  NOT NULL,
    CONSTRAINT Flat_pk PRIMARY KEY (Flat_id)
) ;

-- Table: Invoice
CREATE TABLE Invoice (
    Invoice_id integer  NOT NULL,
    Invoice_date date  NOT NULL,
    Invoice_amount number(7,2)  NOT NULL,
    Reservation_id integer  NOT NULL,
    CONSTRAINT Invoice_pk PRIMARY KEY (Invoice_id)
) ;

-- Table: Payment
CREATE TABLE Payment (
    Payment_id integer  NOT NULL,
    Amount_paid number(8,2)  NOT NULL,
    Date_paid date  NOT NULL,
    Invoice_id integer  NOT NULL,
    Type_id integer  NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_id)
) ;

-- Table: Reservation
CREATE TABLE Reservation (
    Reservation_id integer  NOT NULL,
    First_day date  NOT NULL,
    Last_day date  NOT NULL,
    Customer_id integer  NOT NULL,
    Administrator_id integer  NOT NULL,
    Flat_id integer  NOT NULL,
    CONSTRAINT Reservation_pk PRIMARY KEY (Reservation_id)
) ;

-- Table: Type
CREATE TABLE Type (
    Type_id integer  NOT NULL,
    Type_name varchar2(30)  NOT NULL,
    CONSTRAINT Type_pk PRIMARY KEY (Type_id)
) ;

-- foreign keys
-- Reference: Flat_City (table: Flat)
ALTER TABLE Flat ADD CONSTRAINT Flat_City
    FOREIGN KEY (City_id)
    REFERENCES City (City_id);

-- Reference: Invoice_Reservation (table: Invoice)
ALTER TABLE Invoice ADD CONSTRAINT Invoice_Reservation
    FOREIGN KEY (Reservation_id)
    REFERENCES Reservation (Reservation_id);

-- Reference: Payment_Invoice (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Invoice
    FOREIGN KEY (Invoice_id)
    REFERENCES Invoice (Invoice_id);

-- Reference: Payment_Type (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Type
    FOREIGN KEY (Type_id)
    REFERENCES Type (Type_id);

-- Reference: Reservation_Administrator (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Administrator
    FOREIGN KEY (Administrator_id)
    REFERENCES Administrator (Administrator_id);

-- Reference: Reservation_Customer (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Customer
    FOREIGN KEY (Customer_id)
    REFERENCES Customer (Customer_id);

-- Reference: Reservation_Flat (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Flat
    FOREIGN KEY (Flat_id)
    REFERENCES Flat (Flat_id);
    
    
INSERT INTO City (City_id, City_name) VALUES (1, 'Warsaw');
INSERT INTO City (City_id, City_name) VALUES (2, 'Gdansk');
INSERT INTO City (City_id, City_name) VALUES (3, 'Poznan');
INSERT INTO City (City_id, City_name) VALUES (4, 'Krakow');
INSERT INTO City (City_id, City_name) VALUES (5, 'Wroclaw');

    
    
    
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (1, 3400, 3, 'Mroczna', '5', 58, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (2, 3800, 3, 'Elekcyjna', '2', 24, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (3, 3400, 3,'Kolejowa', '4', 46, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (4, 2300, 2, 'Luska', '3', 17, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (5, 2800, 2, 'Ogrodowa', '1', 3, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (6, 3400, 3, 'Walicow', '5', 39 , 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (7, 2900, 2, 'Panska', '2', 24, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (8, 1900, 1, 'Narwik', '5', 58 , 2);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (9, 3700, 3, 'Narwik', '6', 64, 2);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (10, 2900, 2, 'Zerazna', '7', 78, 3);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (11, 2700,2, 'Walowa', '4', 33, 4);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (12, 3500, 3, 'Doki', '9', 94, 5);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (13, 2400, 2, 'Wodopoj', '4', 40, 5);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (14, 1300, 1, 'Kupiecka', '8', 84, 5);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (15, 1250, 1, 'Saperow', '3', 36, 5);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (16, 2300, 2, 'Sucha', '4', 48, 4);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (17, 1900, 1, 'Czysta', '2', 29, 4);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (18, 1700, 1, 'Podwale', '3', 47, 2);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (19, 2850, 2, 'Sadowa', '4', 59, 2);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (20, 1220, 1, 'Prosta', '2', 31, 2);

INSERT INTO Type (Type_id, Type_name) VALUES (1, 'Cash');
INSERT INTO Type (Type_id, Type_name) VALUES (2, 'Account_transfer');

INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (1, 'Monika', 'Nowak', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48-514-16-17743', 'Monika1986@gmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (2, 'Ewa', 'Kowalczyk', TO_DATE('1999-05-04', 'YYYY-MM-DD'), '+48-961-24-95658', 'kudottoppacre-5293@yopmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (3, 'Joanna', 'Szymański', TO_DATE('1965-09-28', 'YYYY-MM-DD'), '+48-721-72-88798', 'meinoigoleixu-2054@yopmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (4, 'Antoni', 'Jankowski', TO_DATE('2001-02-07', 'YYYY-MM-DD'), '+48-248-56-54620', 'caitlin.woodward@octopus.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (5, 'Jakub', 'Kozłowski', NULL, '+48-759-00-24319', 'jermaine.becker@yahoo.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (6, 'Aleksander', 'Kozłowski', NULL, '+48-403-70-11185', 'dashawn_blick@yahoo.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (7, 'Filip', 'Kowalczyk', TO_DATE('1985-07-26', 'YYYY-MM-DD'), '+48-742-14-07301', 'aaron.rowe@hotmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (8, 'Mikołaj', 'Bosko', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48-853-56-07563', 'vincenzo.wolff39@hotmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (9, 'Wojciech', 'Bukoski', TO_DATE('1995-09-27', 'YYYY-MM-DD'), '+48-446-64-15951', 'rosalyn50@yahoo.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (10, 'Jan', 'Chlebek', TO_DATE('1998-10-23', 'YYYY-MM-DD'), '+48-160-78-82237', 'kailee.murray@yahoo.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (11, 'Magdalena', 'Czajka', NULL, '+48-833-60-41967', 'adrian67@gmail.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (12, 'Agnieszka', 'Dubicki', NULL, '+48-710-21-20913', 'amelie_maggio@yahoo.com');
INSERT INTO Customer (Customer_id, Customer_name, Customer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (13, 'Monika Szulc', 'Fabian', TO_DATE('1993-03-07', 'YYYY-MM-DD'), '+48-986-25-29564', 'kiara_feest@hotmail.com');


INSERT INTO Administrator (Administrator_id, Administrator_name, Administrator_surname, Administrator_number, Administrator_email) 
VALUES (1, 'Aleksy', 'Nowak', 'ad001', 'ad001@gmail.com');
INSERT INTO Administrator (Administrator_id, Administrator_name, Administrator_surname, Administrator_number, Administrator_email) 
VALUES (2, 'Jan', 'Kowalski', 'ad002', 'ad002@gmail.com');
INSERT INTO Administrator (Administrator_id, Administrator_name, Administrator_surname, Administrator_number, Administrator_email) 
VALUES (3, 'Aleksy', 'Kaminski', 'ad003', 'ad003@gmail.com');
INSERT INTO Administrator (Administrator_id, Administrator_name, Administrator_surname, Administrator_number, Administrator_email) 
VALUES (4, 'Marek', 'Wozniak', 'ad004', 'ad004@gmail.com');
INSERT INTO Administrator (Administrator_id, Administrator_name, Administrator_surname, Administrator_number, Administrator_email) 
VALUES (5, 'Michal', 'Lewandowski', 'ad005', 'ad005@gmail.com');

INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (1, TO_DATE('2022-03-16', 'YYYY-MM-DD'), TO_DATE('2022-04-16', 'YYYY-MM-DD'), 5, 3, 3);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (2, TO_DATE('2022-03-18', 'YYYY-MM-DD'), TO_DATE('2022-05-18', 'YYYY-MM-DD'), 9, 1, 9);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (3, TO_DATE('2022-03-20', 'YYYY-MM-DD'), TO_DATE('2022-04-20', 'YYYY-MM-DD'), 10, 2, 14);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (4, TO_DATE('2022-03-21', 'YYYY-MM-DD'), TO_DATE('2022-06-21', 'YYYY-MM-DD'), 11, 2, 11);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (5, TO_DATE('2022-03-25', 'YYYY-MM-DD'), TO_DATE('2022-06-25', 'YYYY-MM-DD'), 12, 4, 16);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (6, TO_DATE('2022-03-28', 'YYYY-MM-DD'), TO_DATE('2022-05-28', 'YYYY-MM-DD'), 8, 4, 7);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (7, TO_DATE('2022-04-01', 'YYYY-MM-DD'), TO_DATE('2022-05-01', 'YYYY-MM-DD'), 7, 3, 4);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (8, TO_DATE('2022-04-03', 'YYYY-MM-DD'), TO_DATE('2022-05-03', 'YYYY-MM-DD'), 6, 3, 5);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (9, TO_DATE('2022-04-09', 'YYYY-MM-DD'), TO_DATE('2022-06-09', 'YYYY-MM-DD'), 4, 2, 6);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (10, TO_DATE('2022-04-12', 'YYYY-MM-DD'), TO_DATE('2022-07-12', 'YYYY-MM-DD'), 2, 1, 10);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (11, TO_DATE('2022-04-15', 'YYYY-MM-DD'), TO_DATE('2022-08-15', 'YYYY-MM-DD'), 3, 1, 17);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (12, TO_DATE('2022-04-16', 'YYYY-MM-DD'), TO_DATE('2022-05-16', 'YYYY-MM-DD'), 1, 5, 20);
INSERT INTO Reservation (Reservation_id, First_day, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (13, TO_DATE('2022-04-19', 'YYYY-MM-DD'), TO_DATE('2022-06-19', 'YYYY-MM-DD'), 13, 4, 19);

INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (1, TO_DATE('2022-03-14', 'YYYY-MM-DD'), 3400, 1);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (2, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 7400, 2);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (3, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 1300, 3);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (4, TO_DATE('2022-03-19', 'YYYY-MM-DD'), 8100, 4);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (5, TO_DATE('2022-03-21', 'YYYY-MM-DD'), 6900, 5);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (6, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 5800, 6);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (7, TO_DATE('2022-03-26', 'YYYY-MM-DD'), 2300, 7);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (8, TO_DATE('2022-04-01', 'YYYY-MM-DD'), 2800, 8);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (9, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 6800, 9);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (10, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 8700, 10);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (11, TO_DATE('2022-04-12', 'YYYY-MM-DD'), 7600, 11);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (12, TO_DATE('2022-04-14', 'YYYY-MM-DD'), 1220, 12);
INSERT INTO Invoice (Invoice_id, Invoice_date, Invoice_Amount, Reservation_id)
VALUES (13, TO_DATE('2022-04-18', 'YYYY-MM-DD'), 5700, 13);


INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (1, 1, TO_DATE('2022-03-15', 'YYYY-MM-DD'), 3400, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (2, 2, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 7400, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (3, 3, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 1300, 2);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (4, 4, TO_DATE('2022-03-19', 'YYYY-MM-DD'), 8100, 2);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (5, 5, TO_DATE('2022-03-22', 'YYYY-MM-DD'), 6900, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (6, 6, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 5800, 2);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (7, 7, TO_DATE('2022-03-28', 'YYYY-MM-DD'), 2300, 2);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (8, 8, TO_DATE('2022-04-02', 'YYYY-MM-DD'), 2800, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (9, 9, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 6800, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (10, 10, TO_DATE('2022-04-10', 'YYYY-MM-DD'), 8700, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (11, 11, TO_DATE('2022-04-13', 'YYYY-MM-DD'), 7600, 1);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (12, 12, TO_DATE('2022-04-15', 'YYYY-MM-DD'), 1220, 2);
INSERT INTO Payment (Payment_id, Invoice_id, Date_paid, Amount_paid, Type_id)
VALUES (13, 13, TO_DATE('2022-04-18', 'YYYY-MM-DD'), 5700, 2);

/*shows the whole information about the flats that situated in the Warsaw*/
Select * from flat
where City_id in (
select City_id from City
where UPPER(City_name) = 'WARSAW'); 

/*shows how many Payments have appeared using the money transfer way
(also use the check of the phrase 'money_transfer' with %transfer%, because during 
the filling data you can forgive if its written Money_Transfer or MoneyTranfer
and so on*/
Select count(Payment_id), Type_id from Payment 
where Type_id in
(select Type_id from Type
where lower(Type_name) like '%transfer%')
group by Type_id;

/*shows the information about the Payments that have appeared during the period 
from 2022-03-26 till 2022-04-03*/
Select * from Payment
where Invoice_id in (
select Invoice_id from Invoice
where Invoice_date between '2022-03-26' and '2022-04-03');

--shows the Reservation information about those flats whose price more or equal 3100
Select a.*, b.Flat_price
from Reservation a
inner join Flat b on a.Flat_id = b.Flat_id
where b.Flat_price >= 3100;

--shows the reservation data of the customer whose Email contain "@gmail"
Select a.*, b.Customer_name
from Reservation a
inner join Customer b on a.Customer_id = b.Customer_id
where Customer_Email like '%@gmail%';

/*joins two tables Flat and column Reservation_id to show the whole information about the 
flats( what of them are busy or not)*/
Select a.*, b.Reservation_id
from Flat a
left outer join Reservation b on a.Flat_id = b.Flat_id
where  a.Flat_id between 5 and 20
order by a.Flat_id;

--shows how many reservations are controlled by the managers with ID 3 and 5;
Select  count(a.Reservation_id), b.Administrator_id
from Reservation a
inner join Administrator b on a.Administrator_id = b.Administrator_id
where b.Administrator_id in (3,5)
Group by b.Administrator_id;


--shows the the name and reservation id of the customer whose names started with "M" 
select a.Customer_name, a.Customer_id, b.Reservation_id
from Customer a
inner join Reservation b on a.Customer_id = b.Customer_id
group by a.Customer_name, a.Customer_id, b.Reservation_id
having a.Customer_name like 'M%';

--correlated subquery that shows the 3 most expensive flats
select Flat_id, Flat_price
from Flat f
where 3 > (
select count(*)
from Flat
where Flat_price > f.Flat_price);

/*Shows the information about payments where the customer pay the invoice the same day
when it was appeared*/
select a.*, b.Invoice_id
from Payment a
inner join Invoice b on a.Invoice_id = b.Invoice_id
where b.Invoice_date = a.Date_paid;


select a.*, b.*
from Payment a
Full outer join Invoice b on a.Invoice_id = b.Invoice_id;