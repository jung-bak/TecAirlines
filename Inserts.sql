use TecAirlines

-- JOB
insert into JOB (JOB_ID, JobDescription) values (1, 'Legal');
insert into JOB (JOB_ID, JobDescription) values (2, 'Engineering');
insert into JOB (JOB_ID, JobDescription) values (3, 'Legal');
insert into JOB (JOB_ID, JobDescription) values (4, 'Marketing');
insert into JOB (JOB_ID, JobDescription) values (5, 'Sales');

--EMPLOYEE
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (1, 'Sphagnaceae', 'sTAHc4207281', 'Trixi', 'W', 'Tippings', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (2, 'Rutaceae', 'HFAif8496813', 'Gaye', null, 'Wildey', 4);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (3, 'Fabaceae', 'oXLOw4371933', 'Tracy', 'J', 'Bollis', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (4, 'Asteraceae', 'CXEqb1374758', 'Yard', null, 'Tilson', 5);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (5, 'Fabaceae', 'ZSERp1156253', 'Annelise', 'E', 'Phippin', 3);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (6, 'Crassulaceae', 'BcvLI4548025', 'Deane', 'T', 'Rusk', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (7, 'Scrophulariaceae', 'HvMPI7626682', 'Doti', null, 'Perassi', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (8, 'Scrophulariaceae', 'TKxrD3817898', 'Karlyn', 'D', 'Gardener', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (9, 'Poaceae', 'pkGOY7408740', 'Neal', 'R', 'Illsley', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (10, 'Micareaceae', 'nVjKF3619630', 'Darrel', 'I', 'Halfhead', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (11, 'Asteraceae', 'rRifI7686688', 'Devan', 'U', 'Immer', 4);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (12, 'Cladoniaceae', 'dHtlU3253447', 'Blondie', null, 'Gullivent', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (13, 'Theaceae', 'EhRVd6510395', 'Geoffrey', null, 'Burleigh', 5);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (14, 'Violaceae', 'dfFLn3622326', 'Aarika', null, 'Le Jean', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (15, 'Rubiaceae', 'rOkfe6942626', 'Augustin', null, 'Grob', 1);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (16, 'Liliaceae', 'Lbtfe6097606', 'Roth', 'R', 'Pendergrast', 3);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (17, 'Brassicaceae', 'ecbOk2469538', 'Nollie', 'C', 'Treend', 5);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (18, 'Euphorbiaceae', 'mTcWj3484996', 'Anallese', 'A', 'Shuttlewood', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (19, 'Rubiaceae', 'ItyZJ7738062', 'Deane', 'Q', 'Lorryman', 2);
insert into EMPLOYEE (EMPLOYEE_ID, Username, Password, FirstName, MI, LastName, Job_ID) values (20, 'Juncaceae', 'wJrdq0791145', 'Rosalinde', null, 'Bignal', 4);

-- Country
insert into COUNTRY (COUNTRY_ID, CountryName) values (1, 'Mongolia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (2, 'Vietnam');
insert into COUNTRY (COUNTRY_ID, CountryName) values (3, 'Benin');
insert into COUNTRY (COUNTRY_ID, CountryName) values (4, 'China');
insert into COUNTRY (COUNTRY_ID, CountryName) values (5, 'Armenia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (6, 'American Samoa');
insert into COUNTRY (COUNTRY_ID, CountryName) values (7, 'Russia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (8, 'Russia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (9, 'Indonesia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (10, 'Japan');
insert into COUNTRY (COUNTRY_ID, CountryName) values (11, 'Philippines');
insert into COUNTRY (COUNTRY_ID, CountryName) values (12, 'China');
insert into COUNTRY (COUNTRY_ID, CountryName) values (13, 'Indonesia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (14, 'Indonesia');
insert into COUNTRY (COUNTRY_ID, CountryName) values (15, 'China');
insert into COUNTRY (COUNTRY_ID, CountryName) values (16, 'Poland');
insert into COUNTRY (COUNTRY_ID, CountryName) values (17, 'China');
insert into COUNTRY (COUNTRY_ID, CountryName) values (18, 'China');
insert into COUNTRY (COUNTRY_ID, CountryName) values (19, 'Honduras');
insert into COUNTRY (COUNTRY_ID, CountryName) values (20, 'Luxembourg');
insert into COUNTRY (COUNTRY_ID, CountryName) values (21, 'Wakanda');

-- City
insert into CITY (CITY_ID, CityName, Country_ID) values (1, 'Widorokandang', 1);
insert into CITY (CITY_ID, CityName, Country_ID) values (2, 'Oliveira', 2);
insert into CITY (CITY_ID, CityName, Country_ID) values (3, 'Anserma', 3);
insert into CITY (CITY_ID, CityName, Country_ID) values (4, 'Ruše', 4);
insert into CITY (CITY_ID, CityName, Country_ID) values (5, 'Iberia', 5);
insert into CITY (CITY_ID, CityName, Country_ID) values (6, 'Huangbu', 6);
insert into CITY (CITY_ID, CityName, Country_ID) values (7, 'Prudentópolis', 7);
insert into CITY (CITY_ID, CityName, Country_ID) values (8, 'Tanahmerah', 8);
insert into CITY (CITY_ID, CityName, Country_ID) values (9, 'Daru', 9);
insert into CITY (CITY_ID, CityName, Country_ID) values (10, 'Sindangkerta', 10);
insert into CITY (CITY_ID, CityName, Country_ID) values (11, 'Xujiadian', 11);
insert into CITY (CITY_ID, CityName, Country_ID) values (12, 'Jaworze', 12);
insert into CITY (CITY_ID, CityName, Country_ID) values (13, 'Weifang', 13);
insert into CITY (CITY_ID, CityName, Country_ID) values (14, 'Rudniki', 14);
insert into CITY (CITY_ID, CityName, Country_ID) values (15, 'Itumbiara', 15);
insert into CITY (CITY_ID, CityName, Country_ID) values (16, 'Itagibá', 16);
insert into CITY (CITY_ID, CityName, Country_ID) values (17, 'Oni', 17);
insert into CITY (CITY_ID, CityName, Country_ID) values (18, 'Cruz', 18);
insert into CITY (CITY_ID, CityName, Country_ID) values (19, 'Bayt ‘Ūr at Taḩtā', 19);
insert into CITY (CITY_ID, CityName, Country_ID) values (20, 'Xuebu', 20);
insert into CITY (CITY_ID, CityName, Country_ID) values (21, 'Wakanda', 21);

--AIRPORT
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (1, 'IDR', 1);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (2, 'NGN', 2);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (3, 'EUR', 3);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (4, 'UAH', 4);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (5, 'USD', 5);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (6, 'CNY', 6);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (7, 'ZAR', 7);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (8, 'ILS', 8);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (9, 'HTG', 9);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (10, 'PLN', 10);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (11, 'RUB', 11);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (12, 'CNY', 12);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (13, 'CZK', 13);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (14, 'PHP', 14);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (15, 'COP', 15);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (16, 'BWP', 16);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (17, 'CZK', 17);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (18, 'CNY', 18);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (19, 'SLL', 19);
insert into AIRPORT (AIRPORT_ID, AirportCode, City_ID) values (20, 'CLP', 20);


--FLIGHT
insert into FLIGHT (FLIGHT_ID, InitialTime, FinalTime) values (1, '4/28/2018', '9/25/2019');
insert into FLIGHT (FLIGHT_ID, InitialTime, FinalTime) values (2, '4/28/2018', '9/4/2019');
insert into FLIGHT (FLIGHT_ID, InitialTime, FinalTime) values (3, '4/28/2018', '10/29/2019');
insert into FLIGHT (FLIGHT_ID, InitialTime, FinalTime) values (4, '4/21/2018', '9/24/2019');
insert into FLIGHT (FLIGHT_ID, InitialTime, FinalTime) values (5, '4/26/2018', '8/3/2019');

--SOURCE_RELATION
insert into SOURCE_RELATION (SOURCE_RELATION_ID, Airport_ID, Flight_ID) values (1, 20, 1);
insert into SOURCE_RELATION (SOURCE_RELATION_ID, Airport_ID, Flight_ID) values (2, 6, 2);
insert into SOURCE_RELATION (SOURCE_RELATION_ID, Airport_ID, Flight_ID) values (3, 8, 3);
insert into SOURCE_RELATION (SOURCE_RELATION_ID, Airport_ID, Flight_ID) values (4, 8, 4);
insert into SOURCE_RELATION (SOURCE_RELATION_ID, Airport_ID, Flight_ID) values (5, 13, 5);

--DESTINATION_RELATION
insert into DESTINATION_RELATION (DESTINATION_RELATION_ID, Airport_ID, Flight_ID) values (1, 1, 1);
insert into DESTINATION_RELATION (DESTINATION_RELATION_ID, Airport_ID, Flight_ID) values (2, 16, 2);
insert into DESTINATION_RELATION (DESTINATION_RELATION_ID, Airport_ID, Flight_ID) values (3, 14, 3);
insert into DESTINATION_RELATION (DESTINATION_RELATION_ID, Airport_ID, Flight_ID) values (4, 15, 4);
insert into DESTINATION_RELATION (DESTINATION_RELATION_ID, Airport_ID, Flight_ID) values (5, 13, 5);

--SEAT
insert into SEAT (SEAT_ID, SeatNumber) values (1, 1);
insert into SEAT (SEAT_ID, SeatNumber) values (2, 2);
insert into SEAT (SEAT_ID, SeatNumber) values (3, 3);
insert into SEAT (SEAT_ID, SeatNumber) values (4, 4);
insert into SEAT (SEAT_ID, SeatNumber) values (5, 5);
insert into SEAT (SEAT_ID, SeatNumber) values (6, 6);
insert into SEAT (SEAT_ID, SeatNumber) values (7, 7);
insert into SEAT (SEAT_ID, SeatNumber) values (8, 8);
insert into SEAT (SEAT_ID, SeatNumber) values (9, 9);
insert into SEAT (SEAT_ID, SeatNumber) values (10, 10);
insert into SEAT (SEAT_ID, SeatNumber) values (11, 11);
insert into SEAT (SEAT_ID, SeatNumber) values (12, 12);
insert into SEAT (SEAT_ID, SeatNumber) values (13, 13);
insert into SEAT (SEAT_ID, SeatNumber) values (14, 14);
insert into SEAT (SEAT_ID, SeatNumber) values (15, 15);
insert into SEAT (SEAT_ID, SeatNumber) values (16, 16);
insert into SEAT (SEAT_ID, SeatNumber) values (17, 17);
insert into SEAT (SEAT_ID, SeatNumber) values (18, 18);
insert into SEAT (SEAT_ID, SeatNumber) values (19, 19);
insert into SEAT (SEAT_ID, SeatNumber) values (20, 20);
insert into SEAT (SEAT_ID, SeatNumber) values (21, 21);
insert into SEAT (SEAT_ID, SeatNumber) values (22, 22);
insert into SEAT (SEAT_ID, SeatNumber) values (23, 23);
insert into SEAT (SEAT_ID, SeatNumber) values (24, 24);
insert into SEAT (SEAT_ID, SeatNumber) values (25, 25);
insert into SEAT (SEAT_ID, SeatNumber) values (26, 26);
insert into SEAT (SEAT_ID, SeatNumber) values (27, 27);
insert into SEAT (SEAT_ID, SeatNumber) values (28, 28);
insert into SEAT (SEAT_ID, SeatNumber) values (29, 29);
insert into SEAT (SEAT_ID, SeatNumber) values (30, 30);
insert into SEAT (SEAT_ID, SeatNumber) values (31, 31);
insert into SEAT (SEAT_ID, SeatNumber) values (32, 32);
insert into SEAT (SEAT_ID, SeatNumber) values (33, 33);
insert into SEAT (SEAT_ID, SeatNumber) values (34, 34);
insert into SEAT (SEAT_ID, SeatNumber) values (35, 35);
insert into SEAT (SEAT_ID, SeatNumber) values (36, 36);
insert into SEAT (SEAT_ID, SeatNumber) values (37, 37);
insert into SEAT (SEAT_ID, SeatNumber) values (38, 38);
insert into SEAT (SEAT_ID, SeatNumber) values (39, 39);
insert into SEAT (SEAT_ID, SeatNumber) values (40, 40);
insert into SEAT (SEAT_ID, SeatNumber) values (41, 41);
insert into SEAT (SEAT_ID, SeatNumber) values (42, 42);
insert into SEAT (SEAT_ID, SeatNumber) values (43, 43);
insert into SEAT (SEAT_ID, SeatNumber) values (44, 44);
insert into SEAT (SEAT_ID, SeatNumber) values (45, 45);
insert into SEAT (SEAT_ID, SeatNumber) values (46, 46);
insert into SEAT (SEAT_ID, SeatNumber) values (47, 47);
insert into SEAT (SEAT_ID, SeatNumber) values (48, 48);
insert into SEAT (SEAT_ID, SeatNumber) values (49, 49);
insert into SEAT (SEAT_ID, SeatNumber) values (50, 50);
insert into SEAT (SEAT_ID, SeatNumber) values (51, 51);
insert into SEAT (SEAT_ID, SeatNumber) values (52, 52);
insert into SEAT (SEAT_ID, SeatNumber) values (53, 53);
insert into SEAT (SEAT_ID, SeatNumber) values (54, 54);
insert into SEAT (SEAT_ID, SeatNumber) values (55, 55);
insert into SEAT (SEAT_ID, SeatNumber) values (56, 56);
insert into SEAT (SEAT_ID, SeatNumber) values (57, 57);
insert into SEAT (SEAT_ID, SeatNumber) values (58, 58);
insert into SEAT (SEAT_ID, SeatNumber) values (59, 59);
insert into SEAT (SEAT_ID, SeatNumber) values (60, 60);
insert into SEAT (SEAT_ID, SeatNumber) values (61, 61);
insert into SEAT (SEAT_ID, SeatNumber) values (62, 62);
insert into SEAT (SEAT_ID, SeatNumber) values (63, 63);
insert into SEAT (SEAT_ID, SeatNumber) values (64, 64);
insert into SEAT (SEAT_ID, SeatNumber) values (65, 65);
insert into SEAT (SEAT_ID, SeatNumber) values (66, 66);
insert into SEAT (SEAT_ID, SeatNumber) values (67, 67);
insert into SEAT (SEAT_ID, SeatNumber) values (68, 68);
insert into SEAT (SEAT_ID, SeatNumber) values (69, 69);
insert into SEAT (SEAT_ID, SeatNumber) values (70, 70);
insert into SEAT (SEAT_ID, SeatNumber) values (71, 71);
insert into SEAT (SEAT_ID, SeatNumber) values (72, 72);
insert into SEAT (SEAT_ID, SeatNumber) values (73, 73);
insert into SEAT (SEAT_ID, SeatNumber) values (74, 74);
insert into SEAT (SEAT_ID, SeatNumber) values (75, 75);
insert into SEAT (SEAT_ID, SeatNumber) values (76, 76);
insert into SEAT (SEAT_ID, SeatNumber) values (77, 77);
insert into SEAT (SEAT_ID, SeatNumber) values (78, 78);
insert into SEAT (SEAT_ID, SeatNumber) values (79, 79);
insert into SEAT (SEAT_ID, SeatNumber) values (80, 80);
insert into SEAT (SEAT_ID, SeatNumber) values (81, 81);
insert into SEAT (SEAT_ID, SeatNumber) values (82, 82);
insert into SEAT (SEAT_ID, SeatNumber) values (83, 83);
insert into SEAT (SEAT_ID, SeatNumber) values (84, 84);
insert into SEAT (SEAT_ID, SeatNumber) values (85, 85);
insert into SEAT (SEAT_ID, SeatNumber) values (86, 86);
insert into SEAT (SEAT_ID, SeatNumber) values (87, 87);
insert into SEAT (SEAT_ID, SeatNumber) values (88, 88);
insert into SEAT (SEAT_ID, SeatNumber) values (89, 89);
insert into SEAT (SEAT_ID, SeatNumber) values (90, 90);
insert into SEAT (SEAT_ID, SeatNumber) values (91, 91);
insert into SEAT (SEAT_ID, SeatNumber) values (92, 92);
insert into SEAT (SEAT_ID, SeatNumber) values (93, 93);
insert into SEAT (SEAT_ID, SeatNumber) values (94, 94);
insert into SEAT (SEAT_ID, SeatNumber) values (95, 95);
insert into SEAT (SEAT_ID, SeatNumber) values (96, 96);
insert into SEAT (SEAT_ID, SeatNumber) values (97, 97);
insert into SEAT (SEAT_ID, SeatNumber) values (98, 98);
insert into SEAT (SEAT_ID, SeatNumber) values (99, 99);
insert into SEAT (SEAT_ID, SeatNumber) values (100, 100);
insert into SEAT (SEAT_ID, SeatNumber) values (101, 101);
insert into SEAT (SEAT_ID, SeatNumber) values (102, 102);
insert into SEAT (SEAT_ID, SeatNumber) values (103, 103);
insert into SEAT (SEAT_ID, SeatNumber) values (104, 104);
insert into SEAT (SEAT_ID, SeatNumber) values (105, 105);
insert into SEAT (SEAT_ID, SeatNumber) values (106, 106);
insert into SEAT (SEAT_ID, SeatNumber) values (107, 107);
insert into SEAT (SEAT_ID, SeatNumber) values (108, 108);
insert into SEAT (SEAT_ID, SeatNumber) values (109, 109);
insert into SEAT (SEAT_ID, SeatNumber) values (110, 110);
insert into SEAT (SEAT_ID, SeatNumber) values (111, 111);
insert into SEAT (SEAT_ID, SeatNumber) values (112, 112);
insert into SEAT (SEAT_ID, SeatNumber) values (113, 113);
insert into SEAT (SEAT_ID, SeatNumber) values (114, 114);
insert into SEAT (SEAT_ID, SeatNumber) values (115, 115);
insert into SEAT (SEAT_ID, SeatNumber) values (116, 116);
insert into SEAT (SEAT_ID, SeatNumber) values (117, 117);
insert into SEAT (SEAT_ID, SeatNumber) values (118, 118);
insert into SEAT (SEAT_ID, SeatNumber) values (119, 119);
insert into SEAT (SEAT_ID, SeatNumber) values (120, 120);
insert into SEAT (SEAT_ID, SeatNumber) values (121, 121);
insert into SEAT (SEAT_ID, SeatNumber) values (122, 122);
insert into SEAT (SEAT_ID, SeatNumber) values (123, 123);
insert into SEAT (SEAT_ID, SeatNumber) values (124, 124);
insert into SEAT (SEAT_ID, SeatNumber) values (125, 125);
insert into SEAT (SEAT_ID, SeatNumber) values (126, 126);
insert into SEAT (SEAT_ID, SeatNumber) values (127, 127);
insert into SEAT (SEAT_ID, SeatNumber) values (128, 128);
insert into SEAT (SEAT_ID, SeatNumber) values (129, 129);
insert into SEAT (SEAT_ID, SeatNumber) values (130, 130);
insert into SEAT (SEAT_ID, SeatNumber) values (131, 131);
insert into SEAT (SEAT_ID, SeatNumber) values (132, 132);
insert into SEAT (SEAT_ID, SeatNumber) values (133, 133);
insert into SEAT (SEAT_ID, SeatNumber) values (134, 134);
insert into SEAT (SEAT_ID, SeatNumber) values (135, 135);
insert into SEAT (SEAT_ID, SeatNumber) values (136, 136);
insert into SEAT (SEAT_ID, SeatNumber) values (137, 137);
insert into SEAT (SEAT_ID, SeatNumber) values (138, 138);
insert into SEAT (SEAT_ID, SeatNumber) values (139, 139);
insert into SEAT (SEAT_ID, SeatNumber) values (140, 140);
insert into SEAT (SEAT_ID, SeatNumber) values (141, 141);
insert into SEAT (SEAT_ID, SeatNumber) values (142, 142);
insert into SEAT (SEAT_ID, SeatNumber) values (143, 143);
insert into SEAT (SEAT_ID, SeatNumber) values (144, 144);
insert into SEAT (SEAT_ID, SeatNumber) values (145, 145);
insert into SEAT (SEAT_ID, SeatNumber) values (146, 146);
insert into SEAT (SEAT_ID, SeatNumber) values (147, 147);
insert into SEAT (SEAT_ID, SeatNumber) values (148, 148);
insert into SEAT (SEAT_ID, SeatNumber) values (149, 149);
insert into SEAT (SEAT_ID, SeatNumber) values (150, 150);
insert into SEAT (SEAT_ID, SeatNumber) values (151, 151);
insert into SEAT (SEAT_ID, SeatNumber) values (152, 152);
insert into SEAT (SEAT_ID, SeatNumber) values (153, 153);
insert into SEAT (SEAT_ID, SeatNumber) values (154, 154);
insert into SEAT (SEAT_ID, SeatNumber) values (155, 155);
insert into SEAT (SEAT_ID, SeatNumber) values (156, 156);
insert into SEAT (SEAT_ID, SeatNumber) values (157, 157);
insert into SEAT (SEAT_ID, SeatNumber) values (158, 158);
insert into SEAT (SEAT_ID, SeatNumber) values (159, 159);
insert into SEAT (SEAT_ID, SeatNumber) values (160, 160);
insert into SEAT (SEAT_ID, SeatNumber) values (161, 161);
insert into SEAT (SEAT_ID, SeatNumber) values (162, 162);
insert into SEAT (SEAT_ID, SeatNumber) values (163, 163);
insert into SEAT (SEAT_ID, SeatNumber) values (164, 164);
insert into SEAT (SEAT_ID, SeatNumber) values (165, 165);
insert into SEAT (SEAT_ID, SeatNumber) values (166, 166);
insert into SEAT (SEAT_ID, SeatNumber) values (167, 167);
insert into SEAT (SEAT_ID, SeatNumber) values (168, 168);
insert into SEAT (SEAT_ID, SeatNumber) values (169, 169);
insert into SEAT (SEAT_ID, SeatNumber) values (170, 170);
insert into SEAT (SEAT_ID, SeatNumber) values (171, 171);
insert into SEAT (SEAT_ID, SeatNumber) values (172, 172);
insert into SEAT (SEAT_ID, SeatNumber) values (173, 173);
insert into SEAT (SEAT_ID, SeatNumber) values (174, 174);
insert into SEAT (SEAT_ID, SeatNumber) values (175, 175);
insert into SEAT (SEAT_ID, SeatNumber) values (176, 176);
insert into SEAT (SEAT_ID, SeatNumber) values (177, 177);
insert into SEAT (SEAT_ID, SeatNumber) values (178, 178);
insert into SEAT (SEAT_ID, SeatNumber) values (179, 179);
insert into SEAT (SEAT_ID, SeatNumber) values (180, 180);
insert into SEAT (SEAT_ID, SeatNumber) values (181, 181);
insert into SEAT (SEAT_ID, SeatNumber) values (182, 182);
insert into SEAT (SEAT_ID, SeatNumber) values (183, 183);
insert into SEAT (SEAT_ID, SeatNumber) values (184, 184);
insert into SEAT (SEAT_ID, SeatNumber) values (185, 185);
insert into SEAT (SEAT_ID, SeatNumber) values (186, 186);
insert into SEAT (SEAT_ID, SeatNumber) values (187, 187);
insert into SEAT (SEAT_ID, SeatNumber) values (188, 188);
insert into SEAT (SEAT_ID, SeatNumber) values (189, 189);
insert into SEAT (SEAT_ID, SeatNumber) values (190, 190);
insert into SEAT (SEAT_ID, SeatNumber) values (191, 191);
insert into SEAT (SEAT_ID, SeatNumber) values (192, 192);
insert into SEAT (SEAT_ID, SeatNumber) values (193, 193);
insert into SEAT (SEAT_ID, SeatNumber) values (194, 194);
insert into SEAT (SEAT_ID, SeatNumber) values (195, 195);
insert into SEAT (SEAT_ID, SeatNumber) values (196, 196);
insert into SEAT (SEAT_ID, SeatNumber) values (197, 197);
insert into SEAT (SEAT_ID, SeatNumber) values (198, 198);
insert into SEAT (SEAT_ID, SeatNumber) values (199, 199);
insert into SEAT (SEAT_ID, SeatNumber) values (200, 200);

--ARCHETYPE
-- EN ARCHETYPE ELMINAR EL Seat_ID DE LA TABLA
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (1, 287);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (2, 279);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (3, 177);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (4, 196);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (5, 209);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (6, 273);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (7, 252);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (8, 253);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (9, 231);
insert into ARCHETYPE (ARCHETYPE_ID, NumberOfSeats) values (10, 166);

--PLANE
insert into PLANE (PLANE_ID, Archetype_ID) values (1, 2);
insert into PLANE (PLANE_ID, Archetype_ID) values (2, 2);
insert into PLANE (PLANE_ID, Archetype_ID) values (3, 10);
insert into PLANE (PLANE_ID, Archetype_ID) values (4, 6);
insert into PLANE (PLANE_ID, Archetype_ID) values (5, 8);
insert into PLANE (PLANE_ID, Archetype_ID) values (6, 2);
insert into PLANE (PLANE_ID, Archetype_ID) values (7, 2);
insert into PLANE (PLANE_ID, Archetype_ID) values (8, 10);
insert into PLANE (PLANE_ID, Archetype_ID) values (9, 8);
insert into PLANE (PLANE_ID, Archetype_ID) values (10, 5);

--STORED_IN_RELATION
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (1, 1, 1);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (2, 2, 2);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (3, 3, 3);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (4, 4, 4);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (5, 5, 5);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (6, 6, 6);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (7, 7, 7);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (8, 8, 8);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (9, 9, 9);
insert into STORED_IN_RELATION (STORED_IN_ID, Plane_ID, Airport_ID) values (10, 10, 10);


--BOARDING PASS
insert into BOARDINGPASS (BOARDINGPASS_ID, Price, Class, Flight_ID, Seat_ID, Plane_ID) values (1, '$551.47', 'ECONOMY', 1, 3, 4);
insert into BOARDINGPASS (BOARDINGPASS_ID, Price, Class, Flight_ID, Seat_ID, Plane_ID) values (2, '$955.64', 'ECONOMY', 2, 5, 4);
insert into BOARDINGPASS (BOARDINGPASS_ID, Price, Class, Flight_ID, Seat_ID, Plane_ID) values (3, '$525.79', 'ECONOMY', 3, 1, 2);
insert into BOARDINGPASS (BOARDINGPASS_ID, Price, Class, Flight_ID, Seat_ID, Plane_ID) values (4, '$183.92', 'ECONOMY', 4, 1, 3);
insert into BOARDINGPASS (BOARDINGPASS_ID, Price, Class, Flight_ID, Seat_ID, Plane_ID) values (5, '$1460.22', 'FIRST CLASS', 5, 4, 1);

--PROMOTION
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (1, 'Overhold', '5/31/2019', '9/10/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (2, 'Vagram', '5/29/2019', '7/25/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (3, 'Voltsillam', '5/10/2019', '8/30/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (4, 'Cardify', '5/21/2019', '10/3/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (5, 'Daltfresh', '5/28/2019', '7/27/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (6, 'Bigtax', '6/22/2019', '9/22/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (7, 'Sonair', '5/29/2019', '9/1/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (8, 'It', '5/27/2019', '8/8/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (9, 'Sub-Ex', '6/10/2019', '9/23/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (10, 'Flowdesk', '6/18/2019', '8/16/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (11, 'Bamity', '5/19/2019', '7/10/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (12, 'Holdlamis', '6/18/2019', '7/17/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (13, 'Asoka', '5/12/2019', '10/9/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (14, 'Stim', '5/9/2019', '9/20/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (15, 'Daltfresh', '4/28/2019', '9/21/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (16, 'Bitchip', '5/19/2019', '9/27/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (17, 'Konklux', '5/10/2019', '9/14/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (18, 'Andalax', '5/30/2019', '9/13/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (19, 'Toughjoyfax', '5/5/2019', '8/4/2019');
insert into PROMOTION (PROMOTION_ID, PromotionName, StartDate, EndDate) values (20, 'Latlux', '5/24/2019', '7/4/2019');

--TRIP
insert into TRIP (TRIP_ID, Flight_ID, Promotion_ID) values (1, 1, null);
insert into TRIP (TRIP_ID, Flight_ID, Promotion_ID) values (2, 2, null);
insert into TRIP (TRIP_ID, Flight_ID, Promotion_ID) values (3, 3, null);
insert into TRIP (TRIP_ID, Flight_ID, Promotion_ID) values (4, 4, 18);
insert into TRIP (TRIP_ID, Flight_ID, Promotion_ID) values (5, 5, null);

--PHONE
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (1, 104, '56840825', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (2, 453, '75183093', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (3, 318, '82820594', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (4, 155, '42516482', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (5, 369, '38792661', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (6, 355, '86956381', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (7, 172, '83495191', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (8, 313, '69250326', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (9, 56, '93822317', 'MOBILE');
insert into PHONE (PHONE_ID, CountryCode, PhoneNumber, PhoneType) values (10, 338, '56631130', 'MOBILE');

--UNIVERISTY
insert into UNIVERSITY (UNIVERSITY_ID, UniversityName) values (1, 'TEC');
insert into UNIVERSITY (UNIVERSITY_ID, UniversityName) values (2, 'UCR');
insert into UNIVERSITY (UNIVERSITY_ID, UniversityName) values (3, 'UNA');


--CREDIT_CARD
insert into CREDIT_CARD (CREDIT_CARD_ID, CardNumber, CardName, ExpDate) values (1, '8215360327437779', 'Beverie Attow', '1/25/2021');
insert into CREDIT_CARD (CREDIT_CARD_ID, CardNumber, CardName, ExpDate) values (2, '6988511401853542', 'Justin Johnston', '11/2/2020');
insert into CREDIT_CARD (CREDIT_CARD_ID, CardNumber, CardName, ExpDate) values (3, '8736520420572863', 'Nikki Dwelley', '6/14/2020');
insert into CREDIT_CARD (CREDIT_CARD_ID, CardNumber, CardName, ExpDate) values (4, '9266078654414561', 'Jenifer Greeson', '3/10/2021');
insert into CREDIT_CARD (CREDIT_CARD_ID, CardNumber, CardName, ExpDate) values (5, '2864236795311404', 'Norbert Delaprelle', '10/19/2020');

--PASSENGER
insert into PASSENGER (PASSENGER_ID, Username, Password, Carnet, Millas, Email, Passport, Age, FirstName, MI, LastName, Credit_Card_ID, Trip_ID, Phone_ID, BoardingPass_ID) values (1, 'cnornable0', 'qqVmHC9F9', '2011195318', 4576, 'cnornable0@vimeo.com', '122447207957', 26, 'Cortie', null, 'Nornable', 2, 5, 10, 1);
insert into PASSENGER (PASSENGER_ID, Username, Password, Carnet, Millas, Email, Passport, Age, FirstName, MI, LastName, Credit_Card_ID, Trip_ID, Phone_ID, BoardingPass_ID) values (2, 'gcutsforth1', 'hI5xlA6t', '2014203714', 2157, 'gcutsforth1@wired.com', '427265832618', 22, 'Gun', null, 'Cutsforth', 2, 1, 3, 2);
insert into PASSENGER (PASSENGER_ID, Username, Password, Carnet, Millas, Email, Passport, Age, FirstName, MI, LastName, Credit_Card_ID, Trip_ID, Phone_ID, BoardingPass_ID) values (3, 'snashe2', 'mjRdR6A9P6r', '2016590224', 8883, 'snashe2@qq.com', '273574596490', 29, 'Salli', null, 'Nashe', 3, 1, 8, 3);

--ENROLLED_RELATION
insert into ENROLLED_RELATION (ENROLLED_RELATION_ID, Passenger_ID, University_ID) values (1, 1, 1);
insert into ENROLLED_RELATION (ENROLLED_RELATION_ID, Passenger_ID, University_ID) values (2, 2, 2);
insert into ENROLLED_RELATION (ENROLLED_RELATION_ID, Passenger_ID, University_ID) values (3, 3, 1);










