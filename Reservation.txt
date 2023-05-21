Creating databases

1) City

INSERT INTO City (City_id, City_name) VALUES (1, 'Warsaw');
INSERT INTO City (City_id, City_name) VALUES (2, 'Gdansk');
INSERT INTO City (City_id, City_name) VALUES (3, 'Poznan');
INSERT INTO City (City_id, City_name) VALUES (4, 'Krakow');
INSERT INTO City (City_id, City_name) VALUES (5, 'Wroclaw');

2)Type

INSERT INTO City (Type_id, Type_name) VALUES (1, 'Cash');
INSERT INTO City (Type_id, Type_name) VALUES (2, 'Account_transfer');

3)Flat

INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (1, 3400, 3, Mroczna, '5', 58, 1);
INSERT INTO Flat (Flat_id, Flat_price, Rooms_number, Street_name, House_number, Flat_number, City_id) 
VALUES (2, 3800, 3, Elekcyjna, '2', 24, 1);
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
--Changing street name(Krakow)
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


INSERT INTO Customer (Customer_id, Customer_name, Cuctomer_surname, Date_of_birth, Customer_number, Customer_Email) 
VALUES (1, 'Monika', 'Nowak', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48(4889)514-16-17743', 'Monika1986@gmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (2, 'Ewa', 'Kowalczyk', TO_DATE('1999-05-04', 'YYYY-MM-DD'), '+48(1828)961-24-95658', 'kudottoppacre-5293@yopmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (3, 'Joanna', 'Szymański', TO_DATE('1965-09-28', 'YYYY-MM-DD'), '+48(3051)721-72-88798', 'meinoigoleixu-2054@yopmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (4, 'Antoni', 'Jankowski', TO_DATE('2001-02-07', 'YYYY-MM-DD'), '+48(3153)248-56-54620', 'caitlin.woodward@octopus.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (5, 'Jakub', 'Kozłowski', TO_DATE('2000-03-08', 'YYYY-MM-DD'), '+48(7494)759-00-24319', 'jermaine.becker@yahoo.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (6, 'Aleksander', 'Kozłowski', TO_DATE('1980-12-23', 'YYYY-MM-DD'), '+48(8700)403-70-11185', 'dashawn_blick@yahoo.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (7, 'Filip', 'Kowalczyk', TO_DATE('1985-07-26', 'YYYY-MM-DD'), '+48(4951)742-14-07301', 'aaron.rowe@hotmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (8, 'Mikołaj', 'Bosko', TO_DATE('1986-07-23', 'YYYY-MM-DD'), '+48(7953)853-56-07563', 'vincenzo.wolff39@hotmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (9, 'Wojciech', 'Bukoski', TO_DATE('1995-09-27', 'YYYY-MM-DD'), '+48(8849)446-64-15951', 'rosalyn50@yahoo.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (10, 'Jan', 'Chlebek', TO_DATE('1998-10-23', 'YYYY-MM-DD'), '+48(228)160-78-82237', 'kailee.murray@yahoo.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (11, 'Magdalena', 'Czajka', TO_DATE('1974-05-04', 'YYYY-MM-DD'), '+48(5717)833-60-41967', 'adrian67@gmail.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (12, 'Agnieszka', 'Dubicki', TO_DATE('1998-02-01', 'YYYY-MM-DD'), '+48(5255)710-21-20913', 'amelie_maggio@yahoo.com');

INSERT INTO Customer (Customer_id, Name, Surname, Date_of_birth, Number, Email) 
VALUES (13, 'Monika Szulc', 'Fabian', TO_DATE('1993-03-07', 'YYYY-MM-DD'), '+48(3916)986-25-29564', 'kiara_feest@hotmail.com');


5)Administrator

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


6)Reservation

--Reservation_id  First_date  Last_day  Customer_id  Administrator_id   Flat_id 


INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (1, TO_DATE('2022-03-16', 'YYYY-MM-DD'), TO_DATE('2022-04-16', 'YYYY-MM-DD'), 5, 3, 3);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (2, TO_DATE('2022-03-18', 'YYYY-MM-DD'), TO_DATE('2022-05-18', 'YYYY-MM-DD'), 9, 1, 9);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (3, TO_DATE('2022-03-20', 'YYYY-MM-DD'), TO_DATE('2022-04-20', 'YYYY-MM-DD'), 10, 2, 14);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (4, TO_DATE('2022-03-21', 'YYYY-MM-DD'), TO_DATE('2022-06-21', 'YYYY-MM-DD'), 11, 2, 11);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (5, TO_DATE('2022-03-25', 'YYYY-MM-DD'), TO_DATE('2022-06-25', 'YYYY-MM-DD'), 12, 4, 16);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (6, TO_DATE('2022-03-28', 'YYYY-MM-DD'), TO_DATE('2022-05-28', 'YYYY-MM-DD'), 8, 4, 7);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (7, TO_DATE('2022-04-01', 'YYYY-MM-DD'), TO_DATE('2022-05-01', 'YYYY-MM-DD'), 7, 3, 4);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (8, TO_DATE('2022-04-03', 'YYYY-MM-DD'), TO_DATE('2022-05-03', 'YYYY-MM-DD'), 6, 3, 5);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (9, TO_DATE('2022-04-09', 'YYYY-MM-DD'), TO_DATE('2022-06-09', 'YYYY-MM-DD'), 4, 2, 6);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (10, TO_DATE('2022-04-12', 'YYYY-MM-DD'), TO_DATE('2022-07-12', 'YYYY-MM-DD'), 2, 1, 10);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (11, TO_DATE('2022-04-15', 'YYYY-MM-DD'), TO_DATE('2022-08-15', 'YYYY-MM-DD'), 3, 1, 17);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (12, TO_DATE('2022-04-16', 'YYYY-MM-DD'), TO_DATE('2022-05-16', 'YYYY-MM-DD'), 1, 5, 20);

INSERT INTO Reservation (Reservation_id, First_date, Last_day, Customer_id, Administrator_id, Flat_id)
VALUES (13, TO_DATE('2022-04-19', 'YYYY-MM-DD'), TO_DATE('2022-06-19', 'YYYY-MM-DD'), 13, 4, 19);


7)Invoice

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (1, TO_DATE('2022-03-14', 'YYYY-MM-DD'), 3400, 1);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (2, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 7400, 2);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (3, TO_DATE('2022-03-17', 'YYYY-MM-DD'), 1300, 3);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (4, TO_DATE('2022-03-19', 'YYYY-MM-DD'), 8100, 4);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (5, TO_DATE('2022-03-21', 'YYYY-MM-DD'), 6900, 5);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (6, TO_DATE('2022-03-25', 'YYYY-MM-DD'), 5800, 6);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (7, TO_DATE('2022-03-26', 'YYYY-MM-DD'), 2300, 7);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (8, TO_DATE('2022-04-01', 'YYYY-MM-DD'), 2800, 8);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (9, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 6800, 9);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (10, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 8700, 10);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (11, TO_DATE('2022-04-12', 'YYYY-MM-DD'), 7600, 11);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (12, TO_DATE('2022-04-14', 'YYYY-MM-DD'), 1220, 12);

INSERT INTO Invoice (Invoice_id, Invoice_date, Amount, Reservation_id)
VALUES (13, TO_DATE('2022-04-18', 'YYYY-MM-DD'), 5700, 13);

8)Payment


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


































