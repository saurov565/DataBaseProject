CREATE TABLE Agency Info(Agency ID varchar2(20) primary key,Agency Name
varchar2(20) not null, Email varchar2(20) unique) desc Agency Info

CREATE Agency Loc(Agency ID varchar2(20) primary key,City varchar2(20)
not null,Country varchar2(20) not null,Zip code number not null) desc Agency Loc

CREATE TYPE multivalue type AS TABLE OF VARCHAR2(15); CREATE
TABLE Agency Con ( Agency ID varchar2(20) PRIMARY KEY, Phone No
multivalue type) NESTED TABLE Phone No STORE AS Phone Numbers Table;
desc Agency con
drop table Agency con


CREATE TABLE EMP Info(E ID varchar2(20) primary key,E Name varchar2(20)
not null,DOB date not null,Job Title varchar2(20) not null,Salary Number(20)
not null,Agency ID varchar2(20) not null )
ALTER TABLE EMP Info ADD foreign key (Agency ID) references Agency Info
(Agency ID)
desc EMP Info

CREATE TYPE multivalue type AS TABLE OF VARCHAR2(15);
CREATE TABLE EMP Skill ( E ID varchar2(20) PRIMARY KEY, skills
multivalue type) NESTED TABLE skills STORE AS Phone Numbers Table4;
desc EMP Skill

CREATE TABLE CUS Info(CUS ID varchar2(20) PRIMARY KEY, Cus Name
varchar2(100) NOT NULL, Email varchar2(100) UNIQUE, Membership Level
varchar2(20), Agency ID varchar2(20));
ALTER TABLE CUS Info add constraint agency FOREIGN KEY (Agency ID)
references Agency Info (Agency ID) ;
DESC CUS Info;

CREATE TABLE CUS Loc(CUS ID varchar2(20) PRIMARY KEY, country
varchar2(20) NOT NULL, city varchar2(20) NOT NULL, Zip Code varchar2(20));
DESC CUS Loc

DESC cus con;
INSERT INTO cus con(CUS ID, PHONE NO) VALUES ( ’10’, multivalue type(’018********’,
’019********’)); INSERT INTO cus con(CUS ID, PHONE NO) VALUES (
’20’, multivalue type(’01811******’, ’01822******’)); INSERT INTO cus con(CUS ID,
PHONE NO) VALUES ( ’30’, multivalue type(’018123*****’, ’015678*****’,
’016********’));
SELECT CUS ID, COLUMN VALUE AS PHONE NO FROM cus con ,
TABLE(cus con.PHONE NO);

desc Airline
INSERT INTO Airline( FLIGHT NO, AIRLINE, CUS ID) values(’364’, ’QUTAR’,
’10’)
INSERT INTO Airline( FLIGHT NO, AIRLINE, CUS ID) values(’365’, ’QUTAR’,
’20’)
INSERT INTO Airline( FLIGHT NO, AIRLINE, CUS ID) values(’367’, ’BIMAN BANGLA’, ’10’)
delete from airline where flight NO = ’892TL’
select * from Airline


desc Airline Info
INSERT INTO Airline Info( FLIGHT NO, DEP COUNTRY, ARR COUNTRY,
DEP TIME, ARR TIME) values(’892TL’,’BANGLADESH’,’USA’,’26-NOV-22’,’28-
NOV-22’)
INSERT INTO Airline Info( FLIGHT NO, DEP COUNTRY, ARR COUNTRY,
DEP TIME, ARR TIME) values(’367FC’,’USA’,’UK’,’03-MAY-22’,’04-MAY-22’)
select * from Airline Info


DESC transportation
INSERT INTO transportation( TRANS NO, BOOKING DATE, PICK LOC,
DROP LOC, MODE OF TRANSPORT, CUS ID) values(’T245GF’,’21-JUL23’, ’UTTARA’,’KURIL’,’AC CAR’,’10’)
INSERT INTO transportation( TRANS NO, BOOKING DATE, PICK LOC,
DROP LOC, MODE OF TRANSPORT, CUS ID) values(’F259OG’,’13-MAY23’, ’AZIMPUR’, ’CUMILLA’,’AC TRAIN’,’20’)
INSERT INTO transportation( TRANS NO, BOOKING DATE, PICK LOC,
DROP LOC, MODE OF TRANSPORT, CUS ID) values(’O2T59F’,’01-APR233’,’RAJSHAI’, ’DHAKA’,’AC BUS’,’30’)
SELECT * FROM transportation


DESC Hotel Info
INSERT INTO Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID)
values(’63K9’,’GHI’, ’DHAKA’, ’SWIMMING’,’10’)
INSERT INTO Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID)
values(’26R0’,’BCD’, ’CUMILLA’, ’PARKING’,’20’)
INSERT INTO Hotel Info (H ID, H NAME, LOCATION, FACILITES, CUS ID)
values(’55SK’,’JKL’, ’MYMENSINGH’, ’CONFERENCE’,’30’)
SELECT * FROM Hotel Info


insert into Accommodation( ACC ID, IN DATE, OUT DATE, ROOM TYPE,
ROOM NO, CUS ID, H ID) values(’23-43’,’21-JUL-23’, ’24-JUL-23’, ’SINGLE
BED’,501,’10’,’63K9’)
insert into Accommodation( ACC ID, IN DATE, OUT DATE, ROOM TYPE,
ROOM NO, CUS ID, H ID) values(’23-62’,’13-MAY-23’, ’16-MAY-23’, ’DOUBLE BED’,509,’20’,’26R0’)
insert into Accommodation( ACC ID, IN DATE, OUT DATE, ROOM TYPE,
ROOM NO, CUS ID, H ID) values(’23-65’,’01-APR-23’, ’10-APR-23’, ’SINGLE
BED’,203,’30’,’55SK’)
SELECT * FROM Accommodation


desc Food Booking
insert into Food Booking( B ID, B DATE, MEAL TYPE, N O GUESTS,
H ID) values(’1001’,’22-JUL-23’, ’LUNCH’, ’5’,’63K9’)
insert into Food Booking( B ID, B DATE, MEAL TYPE, N O GUESTS,
H ID) values(’2030’,’12-SEP-23’, ’DINNER’, ’3’,’26R0’)
insert into Food Booking( B ID, B DATE, MEAL TYPE, N O GUESTS,
H ID) values(’3002’,’03-NOV-23’, ’BREAKFAST’, ’6’,’55SK’)
SELECT * FROM Food Booking

desc Hotel Ratings
INSERT INTO Hotel Ratings(H ID, RATINGS) VALUES (’63K9’, multivalue type(’GOOD’, ’EXCELLENT’)); INSERT INTO Hotel Ratings(H IDRATINGS) VALUES (’55SK’, multivalue type(’VERY GOOD’, ’NOT BAD’));
INSERT INTO Hotel Ratings(H ID, RATINGS) VALUES (’26R0’, multivalue type(’EXCELLENT’));
SELECT H ID, COLUMN VALUE AS RATINGS FROM Hotel Ratings,
TABLE(Hotel Ratings.RATINGS)


desc Payment
insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD, INVOICE NUMBER, CUS ID) values(’507B’, 2000,’10-JAN-23’, ’BKASH’, 984,’10’)
insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD, INVOICE NUMBER, CUS ID) values(’465C’, 500,’11-JUL-23’, ’NAGAD’, 985,’10’)
insert into Payment( PAY ID, AMOUNT, PAY DATE, PAY METHOD, INVOICE NUMBER, CUS ID) values(’203A’, 5000,’23-DEC-23’, ’CASH’, 986,’10’)
