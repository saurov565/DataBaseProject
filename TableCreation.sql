create table Agency_Info(Agency_ID varchar2(20) primary key,Agency_Name varchar2(20) not null,Email varchar2(20) unique)

desc Agency_Info


  
create table Agency_Loc(Agency_ID varchar2(20) primary key,City varchar2(20) not null,Country varchar2(20) not null,Zip_code number not null)

desc Agency_Loc 


  
CREATE TYPE multivalue_type AS TABLE OF VARCHAR2(15);
CREATE TABLE Agency_Con ( Agency_ID varchar2(20) PRIMARY KEY, Phone_No multivalue_type) NESTED TABLE Phone_No STORE AS Phone_Numbers_Table;

desc Agency_con

drop table Agency_con



create table EMP_Info(E_ID varchar2(20) primary key,E_Name varchar2(20) not null,DOB date not null,Job_Title varchar2(20) not null,Salary Number(20) not null,Agency_ID varchar2(20) not null )

ALTER TABLE EMP_Info ADD foreign key (Agency_ID) references Agency_Info (Agency_ID)

desc EMP_Info


CREATE TYPE multivalue_type AS TABLE OF VARCHAR2(15);
CREATE TABLE EMP_Skill ( E_ID varchar2(20) PRIMARY KEY, skills multivalue_type) NESTED TABLE skills STORE AS Phone_Numbers_Table4;

desc EMP_Skill 



CREATE TABLE CUS_Info(CUS_ID varchar2(20) PRIMARY KEY, Cus_Name varchar2(100) NOT NULL, Email varchar2(100) UNIQUE, Membership_Level varchar2(20), Agency_ID varchar2(20));

ALTER TABLE CUS_Info add constraint agency FOREIGN KEY (Agency_ID) references Agency_Info (Agency_ID) ;

DESC CUS_Info;



CREATE TABLE CUS_Loc(CUS_ID varchar2(20) PRIMARY KEY, country varchar2(20) NOT NULL, city varchar2(20) NOT NULL, Zip_Code varchar2(20));

DESC CUS_Loc;



CREATE TYPE multivalue_type AS TABLE OF VARCHAR2(15);
CREATE TABLE cus_con ( cus_id varchar(20) PRIMARY KEY, Phone_No multivalue_type) NESTED TABLE Phone_No STORE AS Phone_Numbers_Table1;

desc cus_con



create table Airline(Flight_No Varchar2(20) primary key,Airline varchar2(20) not null,Cus_ID varchar2(20) not null)

ALTER TABLE Airline ADD foreign key (Cus_Id) references Cus_Info(Cus_Id)

desc Airline;



create table Airline_Info(Flight_No Varchar2(20) primary key,Dep_Country varchar2(20) not null,Arr_Country varchar2(20) not null,Dep_Time varchar(20) not null,Arr_Time Varchar2(20) not null)
desc Airline_Info



CREATE TABLE transportation (Trans_No varchar(20) PRIMARY KEY, Booking_Date date UNIQUE, Pick_Loc varchar(20) NOT NULL, Drop_Loc varchar(20) NOT NULL, Mode_of_Transport varchar(10), CUS_ID varchar2(20))

ALTER TABLE transportation add constraint customers FOREIGN KEY (CUS_ID) references CUS_Info (CUS_ID)

DESC transportation



create table Hotel_Info(H_ID Varchar2(20) primary key,H_Name varchar2(20) not null,Location varchar2(20) not null,Facilites varchar2(20) not null,Cus_ID varchar2(20) not null)

ALTER TABLE Hotel_Info ADD foreign key (Cus_Id) references Cus_Info(Cus_Id)

desc Hotel_Info




CREATE TABLE Accommodation(ACC_ID varchar2(20) PRIMARY KEY,In_Date date  NOT NULL, Out_Date date  NOT NULL, Room_Type varchar2(20), Room_No number(7,0) UNIQUE, CUS_ID varchar2(20), H_ID varchar2(20));

ALTER TABLE Accommodation add constraint customer1 FOREIGN KEY (CUS_ID) references CUS_Info;

ALTER TABLE Accommodation add constraint hotel FOREIGN KEY (H_ID) references Hotel_Info;

DESC Accommodation;




create table Food_Booking(B_ID Varchar2(20) primary key,B_Date varchar2(20) not null,Meal_Type varchar2(20) not null,N_o_Guests varchar2(20) not null,H_ID varchar2(20) not null)

ALTER TABLE Food_Booking ADD foreign key (H_ID ) references Hotel_Info (H_ID )

desc Food_Booking;




CREATE TYPE multivalue_type AS TABLE OF VARCHAR2(15);
CREATE TABLE Hotel_Ratings ( H_ID varchar2(20) PRIMARY KEY, Ratings multivalue_type) NESTED TABLE Ratings STORE AS Phone_Numbers_Table3;

desc Hotel_Ratings


create table Payment(Pay_ID varchar2(20) primary key,Amount number not null,Pay_Date date not null,Pay_Method varchar(20) not null,Invoice_Number Number not null,Cus_Id varchar2(20) not null)

ALTER TABLE Payment ADD foreign key (Cus_Id) references Cus_Info(Cus_Id)

desc Payment
