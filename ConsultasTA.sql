use TecAirlines;

--Muestro los ID de vuelo de salida
Select AirportCode, CityName
from TRIP T 
join START_RELATION S on T.TRIP_ID = S.Trip_ID
join AIRPORT A on S.Airport_ID= A.AIRPORT_ID
join CITY C on C.CITY_ID= A.City_ID
join COUNTRY CO on CO.COUNTRY_ID= C.Country_ID
where A.AirportCode='NGN';

--Muestro los ID de vuelo a donde llega el vuelo
Select AirportCode, CityName
from TRIP T 
join END_RELATION S on T.TRIP_ID = S.Trip_ID
join AIRPORT A on S.Airport_ID= A.AIRPORT_ID
join CITY C on C.CITY_ID= A.City_ID
join COUNTRY CO on CO.COUNTRY_ID= C.Country_ID
where A.AirportCode='NGN';
-- where T.Trip

/*Protocolo Flight Booking
insert into TRIP
(TRIP_ID, Flight_ID, Promotion_ID)
values (3, 6, 5); --Cambiar a genérico */

--Protocolo GET_PROMO
select PromotionName
from PROMOTION P
where P.PROMOTION_ID=4; --or P.StartDate='30/4/2019'or P.EndDate= '30/5/2019' ;

--Protocolo PromoXInfo_vuelo_Inicio
select AirportCode, CityName, CountryName
from Promotion P
join TRIP T on P.PROMOTION_ID=T.Promotion_ID
join START_RELATION S on S.Trip_ID=T.TRIP_ID
join END_RELATION E on E.Trip_ID=T.TRIP_ID
join AIRPORT A on A.AIRPORT_ID=S.Airport_ID
join CITY C on C.CITY_ID=A.City_ID
join COUNTRY CO on CO.COUNTRY_ID=C.Country_ID 
where PromotionName= 'NGN' and P.PROMOTION_ID=1234; --and StartDate='30/4/2019' and EndDate ='30/5/2019'
--Protocolo PromoXInfo_vuelo_Final
select AirportCode, CityName, CountryName
from Promotion P
join TRIP T on P.PROMOTION_ID=T.Promotion_ID
join END_RELATION E on E.Trip_ID=T.TRIP_ID
join AIRPORT A on A.AIRPORT_ID=E.Airport_ID
join CITY C on C.CITY_ID=A.City_ID
join COUNTRY CO on CO.COUNTRY_ID=C.Country_ID 
where PromotionName= 'NGN' and P.PROMOTION_ID=1234; --and StartDate='30/4/2019' and EndDate ='30/5/2019'

/*Chequeo de pasajeros*/
select FirstName, LastName
from PASSENGER P
join TRIP T on P.Trip_ID=T.TRIP_ID
where T.TRIP_ID=4;

/*Info_vuelo*/
select T.Flight_ID, T.Promotion_ID, T.TRIP_ID
from TRIP T
join PASSENGER P on T.TRIP_ID=P.Trip_ID
join BOARDINGPASS B on B.BOARDINGPASS_ID = P.BoardingPass_ID
join SEAT S on S.SEAT_ID= B.Seat_ID
join ARCHETYPE A on A.Seat_ID=S.SEAT_ID
join PLANE PL on PL.Archetype_ID= A.ARCHETYPE_ID
where PL.PLANE_ID=2 and A.NumberOfSeats=30;

/*Check in de pasajeros*/
select FirstName, LastName
from PASSENGER P
join TRIP T on T.TRIP_ID=P.Trip_ID
join BOARDINGPASS B on B.BOARDINGPASS_ID=P.BoardingPass_ID
join SEAT S on S.SEAT_ID=B.Seat_ID
where P.Trip_ID= 3 and SeatNumber=1 and B.Class = 'NGN' and (P.Username= 'NGN' or P.Passport= 'NGN');

--Info de Precio
select FirstName, LastName, CardNumber
from CREDIT_CARD CC
join PASSENGER P on CC.CREDIT_CARD_ID=P.Credit_Card_ID
join BOARDINGPASS B on B.BOARDINGPASS_ID=P.BoardingPass_ID
where B.Class= 'NGN' and B.Price= 70000 and B.BOARDINGPASS_ID= 4;

--Info de método de pago
select FirstName, LastName
from PASSENGER P
join CREDIT_CARD CC on P.Credit_Card_ID=CC.CREDIT_CARD_ID
where P.BoardingPass_ID=2 and CC.CardNumber=46573920 and CC.CardName= 'NGN'; --and CC.ExpDate= '30/5/2019'

--FREGISTER
begin transaction;
insert into PLANE
(PLANE_ID, Archetype_ID)
values (20, 80);
insert into ARCHETYPE 
(ARCHETYPE_ID, ModelName, NumberOfSeats)
values(80, 'FortniteBUS', 25);
insert into START_RELATION
values (10, 5, 101);
insert into END_RELATION
values (13, 9, 101);
raiserror('SUCCESFULLY RESGISTERED', 0, 0) with nowait
commit;

/*Lista de vuelos*/
select distinct PLANE_ID, NumberOfSeats
from PLANE P join ARCHETYPE A on P.Archetype_ID = A.ARCHETYPE_ID
	where NumberOfSeats < 30;

/*Chequeo de pasajeros*/
select FirstName, LastName
from PASSENGER P
join BOARDINGPASS B on P.BoardingPass_ID= B.BOARDINGPASS_ID
join FLIGHT F on B.Flight_ID= F.FLIGHT_ID
join SEAT S on S.SEAT_ID=B.Seat_ID
where PASSENGER_ID= 1234;

/*
/*Añadir promociones*/
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate)
values(70, 'EndGame', '30/4/2019', '30/5/2019');
*/
/*Nombre, Apellido y ID de los estudiantes de una universidad*/
select FirstName, LastName, U.UNIVERSITY_ID
from UNIVERSITY U
join ENROLLED_RELATION E on U.UNIVERSITY_ID=E.University_ID
join PASSENGER P on E.Passenger_ID=P.PASSENGER_ID
where U.UniversityName= 'La Mejor Universidad en ingenierias';
/*
/*Creación de pasajeros*/
insert into PASSENGER (UNIVERSITY_ID, Username, Password, Carnet, Millas, Email, Passport, Age, FirstName, MI, LastName, Credit_Card_ID, Trip_ID, Phone_ID, BoardingPass_ID, Baggage_ID) 
values (1, 'cnornable0', 'qqVmHC9F9', '2011195318', 4576, 'cnornable0@vimeo.com', '122447207957', 26, 'Cortie', null, 'Nornable', 2, 5, 10, 1, 5);
*/