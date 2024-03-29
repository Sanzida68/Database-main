--TUPLE


SELECT A.TOUR_GUIDE_ID AS TOUR_ID , A.NAME AS GUIDE_NAME, A.TOUR_AREA, B.PRICE
FROM TOUR_GUIDE A , PACKAGE B
WHERE A.TOUR_GUIDE_ID = B.TOUR_GUIDE_ID AND AVAILABLE = 'YES';


SELECT A.PACKAGE_ID, A.DESTINATION, B.DATE_ AS TOUR_DATE, A.PRICE
FROM PACKAGE A, TOUR_ORDER B
WHERE A.PACKAGE_ID = B.PACKAGE_ID AND PRICE <= 600.00;



--VIEW


CREATE VIEW GUIDE_INFO AS
SELECT TOUR_GUIDE_ID AS GUIDE_ID, NAME, PHONE_NO, SALARY, TOUR_AREA
FROM TOUR_GUIDE
WHERE SALARY = 14000 AND ADDRESS LIKE '%I';


CREATE VIEW PACKAGE_INFO AS
SELECT A.NAME, B.TOUR_GUIDE_ID AS GUIDE_NUM, DATE_ AS STAY
FROM TOUR_GUIDE A, TOUR_ORDER B
WHERE A.TOUR_GUIDE_ID = B.TOUR_GUIDE_ID AND DATE_ >= '20-SEP-22' AND DATE_ <= '20-NOV-22' ; 


--SUBQUERY


SELECT PACKAGE_ID, PERSONS, DESTINATION
FROM PACKAGE
WHERE TOUR_GUIDE_ID IN
(SELECT TOUR_GUIDE_ID 
FROM TOUR_GUIDE
WHERE SALARY = 14000);





