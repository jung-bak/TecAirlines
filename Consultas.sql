/*Mostrar los diferentes orígenes de los vuelos, sin repeticiones.*/
select distinct orige from vuelos;

/* ejemplo de Búsqueda por destino*/
Select * from vuelos where origen="SJO";

/*Número de vuelo y hora de salidas de los que hacen el trayecto SJO-Londres.*/
select num_vuelo, hora_salida from vuelos
	where origen = "SJO"

/*Reservas que permanecen con más de n plazas*/
select count(*) from reservas where plazas_libres > 50;

/*Obtener el número total de plazas para una fecha de vuelo*/
select sum(plazas_libres) from reservas where  fecha_salida="20-feb-2019";

/*Plazas libres en cada uno de los vuelos de a hacia b en un dia c*/
select num_vuelo, plazas_libres from reservas
	where fecha_salida = "20-feb-2019" and
	num_vuelo in (select num_vuelo from vuelos
	where origen= "Madrid" and destino= "Londres");

/*Obtener el tipo de avion y su capacidad con aquellos que tengan menos de 30 disponibles*/
select distinct tipo, capacidad from aviones
	where tipo in (select tipo_avion from vuelos
					where  num_vuelo in (select num_vuelo from reservas
											where plazas_libres < 30));
/* Seleccionar número de vuelo, origen y destinode
 aquellos vuelos con un ORIGEN para los que queden plazas libres. */
select num_vuelo, origen, destino  from vuelos v 
	where exists (select * from reservas  
                   where plazas_libres > 0 and r.num_vuelo = v.num_vuelo)  
	and origen = 'Madrid';
/*Crear una reserva (Staff)*/
insert into reservas (num_vuelo, plazas_libres, tipo_avion,...)
values("IBM003", 120, "BOEING737");


--
--CIERRE DE VUELOS
--
delete from reservas
where plazas_libres=0;
--Cierre por fecha límite
delete from reservas
where dep_date=GETDATE;

--------------------------------------------------------------------------------------
--Chequeo de pasajeros
select from reservas right join pasajeros
	where id_pas= "passenger_id__here";
--Alternativo
select from reservas right join pasajeros
	where pass= "passport_here";

---------------------------------------------------------------------------------------

--Reservación de vuelos
insert into reservas *  --Asumimos un auto incremento del id
values("TIN890", 150, "BOEING373");

---------------------------------------------------------------------------------------