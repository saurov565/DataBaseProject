SELECT E_ID, E_NAME, DOB, JOB_TITLE, SALARY 
FROM EMP_Info
WHERE SALARY<15000



SELECT IN_DATE, OUT_DATE, ROOM_TYPE, ROOM_NO, CUS_ID
FROM Accommodation
WHERE CUS_ID = '20'



SELECT CUS_ID, COLUMN_VALUE AS Phone_No
FROM CUS_CON, TABLE(CUS_CON.Phone_No)
WHERE CUS_ID = '10';



SELECT AMOUNT, INVOICE_NUMBER, PAY_DATE
FROM PAYMENT
WHERE AMOUNT = (SELECT MAX(AMOUNT) FROM PAYMENT);



SELECT ROUND(AVG(SALARY),2) AS "AVERAGE SALARY", AGENCY_ID
FROM EMP_Info 
GROUP BY AGENCY_ID



SELECT CUS_ID, CUS_NAME, EMAIL, NVL(MEMBERSHIP_LEVEL,'NO MEMBERSHIP'), AGENCY_ID
FROM CUS_INFO
WHERE AGENCY_ID = ( SELECT AGENCY_ID 
                    FROM AGENCY_INFO
                    WHERE AGENCY_NAME = 'ABC')




SELECT *
FROM AIRLINE
WHERE CUS_ID = (SELECT CUS_ID 
                FROM CUS_INFO
                WHERE CUS_NAME = 'RAISUL')




SELECT C.CUS_NAME, T.*
FROM CUS_Info C, transportation T
WHERE C.CUS_ID = T.CUS_ID



select info.*, loc.*
from Agency_Info info, Agency_loc loc
where info.agency_id = loc.agency_id




create view transport
as select  TRANS_NO,PICK_LOC, DROP_LOC
from transportation
where cus_id = '10'
DESC TRANSPORT



create view EMP_SAL ( NAME, MINSAL, MAXSAL)
as select a.agency_name, min(e.salary), max(e.salary)
from emp_info e, agency_info a
where e.agency_id = a.agency_id
group by a.agency_name
DESC EMP_SAL



