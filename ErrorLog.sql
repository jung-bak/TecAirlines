use TecAirlines
--Debug & Mistakes
select *
from AIRPORT;

select *
from EMPLOYEE

select *
from PASSENGER;

ALTER TABLE CREDIT_CARD
ALTER COLUMN CardNumber bigint;

alter table CREDIT_CARD
ALTER COLUMN CardName varchar(255);

SELECT B.FLIGHT_ID, CityName
	from BOARDINGPASS B
	join FLIGHT F on B.Flight_ID=F.FLIGHT_ID
	JOIN DESTINATION_RELATION D ON D.Flight_ID=F.FLIGHT_ID
	join AIRPORT A on A.AIRPORT_ID=D.Airport_ID
	join CITY C ON C.CITY_ID=A.City_ID
	where B.BOARDINGPASS_ID=1

select *
from SEAT;
select*
from BOARDINGPASS
select *
from CITY
where CITY_ID= 21;