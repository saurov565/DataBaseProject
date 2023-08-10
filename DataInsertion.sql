desc Agency Info insert into Agency Info ( AGENCY ID, AGENCY NAME,
EMAIL) values(’101-A’, ’ABC’, ’abc@gmail.com’) insert into Agency Info (
AGENCY ID, AGENCY NAME, EMAIL) values(’101-B’, ’XYZ’, ’XYZ@gmail.com’)
select * from Agency Info

  
desc Agency Loc insert into Agency Loc ( AGENCY ID, CITY, COUNTRY,
ZIP CODE) values(’101-A’, ’DHAKA’, ’BANGLADESH’,100) insert into Agency Loc
( AGENCY ID, CITY, COUNTRY, ZIP CODE) values(’101-B’, ’CUMILLA’,
’BANGLADESH’,200) SELECT * FROM Agency Loc

  
desc Agency con INSERT INTO Agency Con (Agency ID, Phone No) VALUES
(’101-A’, multivalue type(’017*********’, ’016*********’)); INSERT INTO Agency Con(Agency ID, Phone No) VALUES (’101-B’, multivalue type(’017543******’, ’016245******’));
SELECT Agency ID, COLUMN VALUE AS Phone No FROM Agency Con,
TABLE(Agency Con.Phone No);


desc EMP Info insert into EMP Info( E ID, E NAME, DOB, JOB TITLE,
SALARY, AGENCY ID) values(’1’,’FAHAD’, ’17-DEC-02’, ’MANAGER’, 10000,
’101- A’) insert into EMP Info( E ID, E NAME, DOB, JOB TITLE, SALARY,
AGENCY ID) values(’2’,’RIYADH’, ’16-MAY-01’, ’CEO’, 10000, ’101-A’) insert
into EMP Info( E ID, E NAME, DOB, JOB TITLE, SALARY, AGENCY ID)
values(’3’,’SHUSMITA’, ’03-JUN-01’, ’GUIDE’, 20000, ’101-A’) UPDATE EMP Info
set SALARY = 50000 where E ID = ’2’ select * from EMP Info


desc EMP Skils INSERT INTO EMP Skill (E ID, SKILLS) VALUES ( ’1’,
multivalue type(’COMMUNICATION’, ’TIME MANAGEMENT’)); INSERTINTO EMP Skill (E ID, SKILLS) VALUES ( ’2’, multivalue type(’ORGANIZATION’,
’PROBLEM SOLVING’)); INSERT INTO EMP Skill (E ID, SKILLS) VALUES ( ’3’, multivalue type(’LANGUAGE SKILLS’)); SELECT E ID, COLUMN VALUE AS SKILLS FROM EMP Skill , TABLE(EMP Skill.SKILLS );


DESC CUS Info; insert into CUS Info( CUS ID, CUS NAME, EMAIL, MEMBERSHIP LEVEL, AGENCY ID) values(’10’, ’ANJUM’, ’anjum@gmail.com’,
’PREMIUM’,’101-A’) insert into CUS Info( CUS ID, CUS NAME, EMAIL, MEMBERSHIP LEVEL, AGENCY ID) values(’20’, ’RAISUL’, ’raisul@gmail.com’,
’PREMIUM’,’101-A’) insert into CUS Info( CUS ID, CUS NAME, EMAIL, AGENCY ID)
values(’30’, ’SIAM’, ’siam@gmail.com’,’101-A’) select * from CUS Info


DESC CUS Loc; insert into CUS Loc( CUS ID, COUNTRY, CITY, ZIP CODE)
values(’10’,’BANGLADESH’, ’MYMENSINGH’, ’2200’) insert into CUS Loc(
CUS ID, COUNTRY, CITY, ZIP CODE) values(’20’,’BANGLADESH’, ’CUMILLA’,
’3500’) insert into CUS Loc( CUS ID, COUNTRY, CITY, ZIP CODE) values(’30’,’BANGLADESH’, ’LAKSHAM’, ’3570’) select * from CUS Loc


DESC cus con; INSERT INTO cus con(CUS ID, PHONE NO) VALUES ( ’10’,
multivalue type(’018********’, ’019********’)); INSERT INTO cus con(CUS ID,
PHONE NO) VALUES ( ’20’, multivalue type(’01811******’, ’01822******’));
INSERT INTO cus con(CUS ID, PHONE NO) VALUES ( ’30’, multivalue type(’018123*****’,
’015678*****’, ’016********’)); SELECT CUS ID, COLUMN VALUE AS PHONE NO
FROM cus con , TABLE(cus con.PHONE NO);


desc Airline insert into Airline( FLIGHT NO, AIRLINE, CUS ID) values(’364’,
’QUTAR’, ’10’) insert into Airline( FLIGHT NO, AIRLINE, CUS ID) values(’365’,
’QUTAR’, ’20’) insert into Airline( FLIGHT NO, AIRLINE, CUS ID) values(’367’,
’BIMAN BANGLA’, ’10’) delete from airline where fLIght NO = ’892TL’ select
* from Airline


desc Airline Info insert into Airline Info( FLIGHT NO, DEP COUNTRY, ARR COUNTRY,
DEP TIME, ARR TIME) values(’892TL’,’BANGLADESH’,’USA’,’26-NOV-22’,’28-
NOV-22’) insert into Airline Info( FLIGHT NO, DEP COUNTRY, ARR COUNTRY,
DEP TIME, ARR TIME) values(’367FC’,’USA’,’UK’,’03-MAY-22’,’04-MAY-22’)
select * from Airline Info


DESC transportation insert into transportation( TRANS NO, BOOKING DATE,
PICK LOC, DROP LOC, MODE OF TRANSPORT, CUS ID) values(’T245GF’,’21-
JUL-23’, ’UTTARA’, ’KURIL’,’AC CAR’,’10’) insert into transportation( TRANS NO,
BOOKING DATE, PICK LOC, DROP LOC, MODE OF TRANSPORT, CUS ID)
values(’F259OG’,’13- MAY-23’, ’AZIMPUR’, ’CUMILLA’,’AC TRAIN’,’20’) insert into transportation( TRANS NO, BOOKING DATE, PICK LOC, DROP LOC,
MODE OF TRANSPORT, CUS ID) values(’O2T59F’,’01-APR-233’,’RAJSHAI’,
’DHAKA’,’AC BUS’,’30’) SELECT * FROM transportation


DESC Hotel Info insert into Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID) values(’63K9’,’GHI’, ’DHAKA’, ’SWIMMING’,’10’) insert
into Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID) values(’26R0’,’BCD’,
’CUMILLA’, ’PARKING’,’20’) insert into Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID) values(’55SK’,’JKL’, ’MYMENSINGH’, ’CONFERENCE’,’30’) SELECT * FROM Hotel In


desc Accommodation; insert into Accommodation( ACC ID, IN DATE, OUT DATE,
ROOM TYPE, ROOM NO, CUS ID, H ID) values(’23-43’,’21-JUL-23’, ’24- JUL23’, ’SINGLE BED’,501,’10’,’63K9’) insert into Accommodation( ACC ID, IN DATE,
OUT DATE, ROOM TYPE, ROOM NO, CUS ID, H ID) values(’23-62’,’13-
MAY-23’, ’16- MAY-23’, ’DOUBLE BED’,509,’20’,’26R0’) insert into Accommodation( ACC ID, IN DATE, OUT DATE, ROOM TYPE, ROOM NO, CUS ID,
H ID) values(’23-65’,’01-APR-23’, ’10- APR-23’, ’SINGLE BED’,203,’30’,’55SK’)
SELECT * FROM Accommodation


desc Food Booking insert into Food Booking( B ID, B DATE, MEAL TYPE,
N O GUESTS, H ID) values(’1001’,’22-JUL-23’, ’LUNCH’, ’5’,’63K9’) insert
into Food Booking( B ID, B DATE, MEAL TYPE, N O GUESTS, H ID) values(’2030’,’12-
SEP-23’, ’DINNER’, ’3’,’26R0’) insert into Food Booking( B ID, B DATE, MEAL TYPE,N O GUESTS, H ID) values(’3002’,’03-NOV-23’, ’BREAKFAST’, ’6’,’55SK’)
SELECT * FROM Food Booking


desc Hotel Ratings INSERT INTO Hotel Ratings(H ID, RATINGS) VALUES
(’63K9’, multivalue type(’GOOD’, ’EXCELLENT’)); INSERT INTO Hotel Ratings(H ID,
RATINGS) VALUES (’55SK’, multivalue type(’VERY GOOD’, ’NOT BAD’));
INSERT INTO Hotel Ratings(H ID, RATINGS) VALUES (’26R0’, multivalue type(’EXCELLENT’));
SELECT H ID, COLUMN VALUE AS RATINGS FROM Hotel Ratings, TABLE(Hotel Ratings.RATINGS);


desc Payment insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD,
INVOICE NUMBER, CUS ID) values(’507B’, 2000,’10-JAN-23’, ’BKASH’, 984,’10’)
insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD, INVOICE NUMBER, CUS ID) values(’465C’, 500,’11-JUL-23’, ’NAGAD’, 985,’10’)
insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD, INVOICE NUMBER, CUS ID) values(’203A’, 5000,’23-DEC-23’, ’CASH’, 986,’10’)
select * from Payment
