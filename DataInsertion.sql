desc Agency_Info

insert into Agency_Info ( AGENCY_ID, AGENCY_NAME, EMAIL) values('101-A', 'ABC', 'abc@gmail.com') 
insert into Agency_Info ( AGENCY_ID, AGENCY_NAME, EMAIL) values('101-B', 'XYZ', 'XYZ@gmail.com') 
select * from Agency_Info



desc Agency_Loc

insert into Agency_Loc ( AGENCY_ID, CITY, COUNTRY, ZIP_CODE) values('101-A', 'DHAKA', 'BANGLADESH',100) 
insert into Agency_Loc ( AGENCY_ID, CITY, COUNTRY, ZIP_CODE) values('101-B', 'CUMILLA', 'BANGLADESH',200) 
SELECT * FROM Agency_Loc



desc Agency_con
INSERT INTO Agency_Con (Agency_ID, Phone_No) VALUES ('101-A', multivalue_type('017*********', '016*********'));
INSERT INTO Agency_Con (Agency_ID, Phone_No) VALUES ('101-B', multivalue_type('017543******', '016245******'));

SELECT Agency_ID, COLUMN_VALUE AS Phone_No FROM Agency_Con, TABLE(Agency_Con.Phone_No);



desc EMP_Info
insert into EMP_Info( E_ID, E_NAME, DOB, JOB_TITLE, SALARY, AGENCY_ID) values('1','FAHAD', '17-DEC-02', 'MANAGER', 10000, '101-A') 
insert into EMP_Info( E_ID, E_NAME, DOB, JOB_TITLE, SALARY, AGENCY_ID) values('2','RIYADH', '16-MAY-01', 'CEO', 10000, '101-A') 
insert into EMP_Info( E_ID, E_NAME, DOB, JOB_TITLE, SALARY, AGENCY_ID) values('3','SHUSMITA', '03-JUN-01', 'GUIDE', 20000, '101-A') 
UPDATE EMP_Info set SALARY = 50000 where E_ID = '2'

select * from EMP_Info



desc EMP_Skils

INSERT INTO EMP_Skill (E_ID, SKILLS) VALUES ( '1', multivalue_type('COMMUNICATION', 'TIME MANAGEMENT'));
INSERT INTO EMP_Skill (E_ID, SKILLS) VALUES ( '2', multivalue_type('ORGANIZATION', 'PROBLEM SOLVING'));
INSERT INTO EMP_Skill (E_ID, SKILLS) VALUES ( '3', multivalue_type('LANGUAGE SKILLS'));

SELECT E_ID, COLUMN_VALUE AS SKILLS FROM EMP_Skill , TABLE(EMP_Skill.SKILLS );



DESC CUS_Info;

insert into CUS_Info( CUS_ID, CUS_NAME, EMAIL, MEMBERSHIP_LEVEL, AGENCY_ID) values('10', 'ANJUM', 'anjum@gmail.com', 'PREMIUM','101-A') 
insert into CUS_Info( CUS_ID, CUS_NAME, EMAIL, MEMBERSHIP_LEVEL, AGENCY_ID) values('20', 'RAISUL', 'raisul@gmail.com', 'PREMIUM','101-A') 
insert into CUS_Info( CUS_ID, CUS_NAME, EMAIL, AGENCY_ID) values('30', 'SIAM', 'siam@gmail.com','101-A') 

select * from CUS_Info


DESC CUS_Loc;

insert into CUS_Loc( CUS_ID, COUNTRY, CITY, ZIP_CODE) values('10','BANGLADESH', 'MYMENSINGH', '2200') 
insert into CUS_Loc( CUS_ID, COUNTRY, CITY, ZIP_CODE) values('20','BANGLADESH', 'CUMILLA', '3500') 
insert into CUS_Loc( CUS_ID, COUNTRY, CITY, ZIP_CODE) values('30','BANGLADESH', 'LAKSHAM', '3570') 

select * from CUS_Loc



DESC cus_con;

INSERT INTO cus_con(CUS_ID, PHONE_NO) VALUES ( '10', multivalue_type('018********', '019********'));
INSERT INTO cus_con(CUS_ID, PHONE_NO) VALUES ( '20', multivalue_type('01811******', '01822******'));
INSERT INTO cus_con(CUS_ID, PHONE_NO) VALUES ( '30', multivalue_type('018123*****', '015678*****', '016********'));

SELECT CUS_ID, COLUMN_VALUE AS PHONE_NO FROM cus_con , TABLE(cus_con.PHONE_NO);




desc Airline

insert into Airline( FLIGHT_NO, AIRLINE, CUS_ID) values('364', 'QUTAR', '10')
insert into Airline( FLIGHT_NO, AIRLINE, CUS_ID) values('365', 'QUTAR', '20')
insert into Airline( FLIGHT_NO, AIRLINE, CUS_ID) values('367', 'BIMAN BANGLA', '10')
delete from airline where fLIght_NO = '892TL'

select * from Airline




desc Airline_Info

insert into Airline_Info( FLIGHT_NO, DEP_COUNTRY, ARR_COUNTRY, DEP_TIME, ARR_TIME) values('892TL','BANGLADESH','USA','26-NOV-22','28-NOV-22')
insert into Airline_Info( FLIGHT_NO, DEP_COUNTRY, ARR_COUNTRY, DEP_TIME, ARR_TIME) values('367FC','USA','UK','03-MAY-22','04-MAY-22')

select * from Airline_Info



DESC transportation
insert into transportation(  TRANS_NO, BOOKING_DATE,  PICK_LOC, DROP_LOC, MODE_OF_TRANSPORT, CUS_ID) values('T245GF','21-JUL-23', 'UTTARA', 'KURIL','AC_CAR','10')

insert into transportation(  TRANS_NO, BOOKING_DATE,  PICK_LOC, DROP_LOC, MODE_OF_TRANSPORT, CUS_ID) values('F259OG','13-MAY-23', 'AZIMPUR', 'CUMILLA','AC_TRAIN','20')
insert into transportation(  TRANS_NO, BOOKING_DATE,  PICK_LOC, DROP_LOC, MODE_OF_TRANSPORT, CUS_ID) values('O2T59F','01-APR-233','RAJSHAI', 'DHAKA','AC_BUS','30')

SELECT * FROM transportation




DESC Hotel_Info 

insert into Hotel_Info (H_ID, H_NAME, LOCATION, FACILITES, CUS_ID) values('63K9','GHI', 'DHAKA', 'SWIMMING','10')
insert into Hotel_Info (H_ID, H_NAME, LOCATION, FACILITES, CUS_ID) values('26R0','BCD', 'CUMILLA', 'PARKING','20')
insert into Hotel_Info (H_ID, H_NAME, LOCATION, FACILITES, CUS_ID) values('55SK','JKL', 'MYMENSINGH', 'CONFERENCE','30')

SELECT * FROM Hotel_Info




desc  Accommodation;

insert into Accommodation( ACC_ID, IN_DATE, OUT_DATE, ROOM_TYPE, ROOM_NO, CUS_ID, H_ID) values('23-43','21-JUL-23', '24-JUL-23', 'SINGLE BED',501,'10','63K9')
insert into Accommodation( ACC_ID, IN_DATE, OUT_DATE, ROOM_TYPE, ROOM_NO, CUS_ID, H_ID) values('23-62','13-MAY-23', '16-MAY-23', 'DOUBLE BED',509,'20','26R0')
insert into Accommodation( ACC_ID, IN_DATE, OUT_DATE, ROOM_TYPE, ROOM_NO, CUS_ID, H_ID) values('23-65','01-APR-23', '10-APR-23', 'SINGLE BED',203,'30','55SK')

SELECT * FROM Accommodation




desc Food_Booking

insert into Food_Booking( B_ID,  B_DATE,  MEAL_TYPE,  N_O_GUESTS,  H_ID) values('1001','22-JUL-23', 'LUNCH', '5','63K9')
insert into Food_Booking( B_ID,  B_DATE,  MEAL_TYPE,  N_O_GUESTS,  H_ID) values('2030','12-SEP-23', 'DINNER', '3','26R0')
insert into Food_Booking( B_ID,  B_DATE,  MEAL_TYPE,  N_O_GUESTS,  H_ID) values('3002','03-NOV-23', 'BREAKFAST', '6','55SK')

SELECT * FROM Food_Booking




desc Hotel_Ratings

INSERT INTO Hotel_Ratings(H_ID, RATINGS) VALUES ('63K9', multivalue_type('GOOD', 'EXCELLENT'));
INSERT INTO Hotel_Ratings(H_ID, RATINGS) VALUES ('55SK', multivalue_type('VERY GOOD', 'NOT BAD'));
INSERT INTO Hotel_Ratings(H_ID, RATINGS) VALUES ('26R0', multivalue_type('EXCELLENT'));

SELECT H_ID, COLUMN_VALUE AS RATINGS FROM Hotel_Ratings, TABLE(Hotel_Ratings.RATINGS);




desc Payment

insert into Payment( PAY_ID, AMOUNT, PAY_DATE, PAY_METHOD, INVOICE_NUMBER, CUS_ID) values('507B', 2000,'10-JAN-23', 'BKASH', 984,'10')
insert into Payment( PAY_ID, AMOUNT, PAY_DATE, PAY_METHOD, INVOICE_NUMBER, CUS_ID) values('465C', 500,'11-JUL-23', 'NAGAD', 985,'10')
insert into Payment( PAY_ID, AMOUNT, PAY_DATE, PAY_METHOD, INVOICE_NUMBER, CUS_ID) values('203A', 5000,'23-DEC-23', 'CASH', 986,'10')

select * from Payment  
