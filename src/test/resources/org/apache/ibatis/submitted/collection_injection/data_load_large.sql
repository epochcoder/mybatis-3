--
--    Copyright 2009-2024 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       https://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

--houses
insert into house (id,name)
values
    (1,'Scelerisque Neque Associates'),
    (2,'Scelerisque Corporation'),
    (3,'Maecenas Malesuada Institute'),
    (4,'Phasellus Elit Limited'),
    (5,'Donec Est Corp.'),
    (6,'Varius Nam Porttitor Corp.'),
    (7,'Donec At Arcu LLC'),
    (8,'Adipiscing Lobortis Risus PC'),
    (9,'Cursus Luctus Ltd'),
    (10,'Ullamcorper Limited');
insert into house (id,name)
values
    (11,'Nunc Interdum Feugiat Ltd'),
    (12,'Tempus Scelerisque Inc.'),
    (13,'Et Associates'),
    (14,'Mi Fringilla Associates'),
    (15,'In Consequat Incorporated'),
    (16,'Dictum Magna Corp.'),
    (17,'Euismod Et Ltd'),
    (18,'Duis Sit Company'),
    (19,'Vel Faucibus Id LLC'),
    (20,'Fermentum Fermentum LLC');
insert into house (id,name)
values
    (21,'Turpis Nec Ltd'),
    (22,'Feugiat Sed Foundation'),
    (23,'Ultrices Corp.'),
    (24,'Quisque Ac PC'),
    (25,'Ac Orci Foundation'),
    (26,'Tincidunt Adipiscing Foundation'),
    (27,'Accumsan Laoreet Limited'),
    (28,'Mauris Integer LLP'),
    (29,'Sem Ut PC'),
    (30,'Ante Ipsum Primis Associates');
insert into house (id,name)
values
    (31,'Laoreet Ipsum Curabitur PC'),
    (32,'Mauris Ltd'),
    (33,'Magna Phasellus Dolor Consulting'),
    (34,'Pellentesque Habitant Morbi Corp.'),
    (35,'Non Bibendum LLC'),
    (36,'Purus Inc.'),
    (37,'Leo PC'),
    (38,'Semper Corporation'),
    (39,'Duis Sit Limited'),
    (40,'Non Leo Corporation');
insert into house (id,name)
values
    (41,'Elementum Inc.'),
    (42,'Vitae Nibh Foundation'),
    (43,'Donec Vitae Erat Corporation'),
    (44,'Lacus Ut Nec PC'),
    (45,'Eros Turpis Ltd'),
    (46,'Leo Cras Vehicula Corporation'),
    (47,'Luctus Et LLP'),
    (48,'Viverra Donec Tempus Corp.'),
    (49,'Natoque Penatibus Incorporated'),
    (50,'Donec Fringilla Incorporated');
insert into house (id,name)
values
    (51,'Dictum Augue LLC'),
    (52,'Adipiscing Lacus Consulting'),
    (53,'Et Magnis Dis Institute'),
    (54,'Ante Nunc Incorporated'),
    (55,'Enim Associates'),
    (56,'Vitae Erat Vivamus Ltd'),
    (57,'Sollicitudin Industries'),
    (58,'Mattis Semper Dui Industries'),
    (59,'In Limited'),
    (60,'Praesent Eu Incorporated');
insert into house (id,name)
values
    (61,'Lorem Ipsum PC'),
    (62,'Ligula Tortor Limited'),
    (63,'Aliquam Incorporated'),
    (64,'Convallis Erat Eget PC'),
    (65,'Lorem Ipsum Corporation'),
    (66,'Egestas Fusce LLC'),
    (67,'Quam Quis LLP'),
    (68,'Cum Sociis LLP'),
    (69,'Suspendisse Eleifend Cras Limited'),
    (70,'At Sem Consulting');
insert into house (id,name)
values
    (71,'Ridiculus Corporation'),
    (72,'Mauris Inc.'),
    (73,'Fermentum LLC'),
    (74,'Urna LLC'),
    (75,'Nibh Aliquam Ornare Associates'),
    (76,'Semper Foundation'),
    (77,'Sodales Incorporated'),
    (78,'Ac Mattis PC'),
    (79,'Diam Dictum Limited'),
    (80,'Dictum Sapien Aenean Company');
insert into house (id,name)
values
    (81,'Eget LLP'),
    (82,'Ut Semper PC'),
    (83,'Erat In Institute'),
    (84,'Sit Inc.'),
    (85,'Dis Parturient Montes PC'),
    (86,'Nulla Donec Non Company'),
    (87,'Enim Diam Ltd'),
    (88,'Donec Porttitor Consulting'),
    (89,'Non Leo PC'),
    (90,'Tempus Non Lacinia Industries');
insert into house (id,name)
values
    (91,'Eu Nibh Foundation'),
    (92,'In Tincidunt Congue Industries'),
    (93,'Nascetur Ridiculus Industries'),
    (94,'Nunc Ullamcorper Industries'),
    (95,'Eget Mollis Associates'),
    (96,'Curabitur Vel LLP'),
    (97,'Eu Tellus Phasellus Corporation'),
    (98,'Metus In Foundation'),
    (99,'Non Justo Ltd'),
    (100,'Sit Amet Foundation');

-- rooms
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (1,'Bedroom',12,56,'Wood',5),
    (2,'Hallway',57,49,'Brick',3),
    (3,'Bedroom',52,27,'Plaster',3),
    (4,'LivingRoom',4,24,'Wood',5),
    (5,'DiningRoom',87,24,'Metal',2),
    (6,'DiningRoom',78,35,'Wood',4),
    (7,'Study',35,30,'Wood',2),
    (8,'Kitchen',31,51,'Plaster',2),
    (9,'Study',14,37,'Brick',3),
    (10,'Study',40,35,'Wood',2);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (11,'Hallway',13,31,'Metal',4),
    (12,'Study',22,56,'Wood',4),
    (13,'Bedroom',75,26,'Plaster',3),
    (14,'Kitchen',6,44,'Metal',5),
    (15,'DiningRoom',58,49,'Wood',3),
    (16,'LivingRoom',86,32,'Metal',1),
    (17,'LivingRoom',2,46,'Wood',3),
    (18,'Study',43,44,'Metal',3),
    (19,'Hallway',15,21,'Brick',4),
    (20,'LivingRoom',19,57,'Plaster',3);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (21,'Study',51,52,'Wood',1),
    (22,'Terrace',70,32,'Metal',4),
    (23,'Kitchen',49,26,'Metal',2),
    (24,'Terrace',87,59,'Brick',5),
    (25,'DiningRoom',24,21,'Wood',3),
    (26,'LivingRoom',53,26,'Plaster',2),
    (27,'Hallway',77,30,'Wood',3),
    (28,'Bedroom',75,47,'Metal',3),
    (29,'Hallway',10,31,'Brick',2),
    (30,'Bedroom',20,56,'Metal',3);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (31,'Hallway',34,30,'Metal',2),
    (32,'DiningRoom',55,42,'Metal',4),
    (33,'Hallway',69,51,'Metal',2),
    (34,'DiningRoom',61,54,'Wood',2),
    (35,'LivingRoom',74,51,'Brick',3),
    (36,'Study',87,26,'Metal',4),
    (37,'DiningRoom',92,49,'Metal',3),
    (38,'LivingRoom',24,32,'Wood',3),
    (39,'LivingRoom',76,60,'Metal',5),
    (40,'DiningRoom',83,20,'Metal',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (41,'Kitchen',68,32,'Metal',2),
    (42,'Bedroom',53,50,'Wood',2),
    (43,'DiningRoom',57,53,'Plaster',1),
    (44,'Study',53,42,'Metal',4),
    (45,'Terrace',12,22,'Plaster',3),
    (46,'Terrace',28,31,'Plaster',4),
    (47,'Hallway',34,28,'Plaster',4),
    (48,'LivingRoom',45,34,'Metal',3),
    (49,'DiningRoom',68,36,'Brick',5),
    (50,'LivingRoom',50,50,'Metal',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (51,'Kitchen',27,59,'Wood',1),
    (52,'DiningRoom',85,57,'Wood',4),
    (53,'LivingRoom',71,49,'Metal',3),
    (54,'Hallway',11,60,'Wood',1),
    (55,'LivingRoom',14,35,'Metal',3),
    (56,'LivingRoom',22,26,'Metal',3),
    (57,'LivingRoom',86,36,'Wood',4),
    (58,'Study',12,57,'Metal',3),
    (59,'Study',35,51,'Wood',4),
    (60,'Study',42,35,'Wood',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (61,'Hallway',33,45,'Plaster',4),
    (62,'LivingRoom',30,42,'Metal',2),
    (63,'LivingRoom',7,31,'Wood',2),
    (64,'DiningRoom',40,35,'Wood',3),
    (65,'Hallway',46,32,'Brick',3),
    (66,'Study',96,34,'Metal',2),
    (67,'LivingRoom',69,39,'Plaster',3),
    (68,'Hallway',99,49,'Wood',3),
    (69,'Terrace',4,54,'Plaster',4),
    (70,'DiningRoom',55,56,'Wood',2);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (71,'LivingRoom',36,45,'Wood',2),
    (72,'Bedroom',79,30,'Wood',2),
    (73,'LivingRoom',83,52,'Plaster',1),
    (74,'Hallway',46,28,'Metal',5),
    (75,'Kitchen',43,60,'Brick',2),
    (76,'Study',26,44,'Wood',3),
    (77,'Hallway',55,32,'Plaster',1),
    (78,'LivingRoom',58,48,'Metal',3),
    (79,'LivingRoom',36,42,'Wood',4),
    (80,'Kitchen',11,43,'Wood',3);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (81,'LivingRoom',28,31,'Wood',4),
    (82,'DiningRoom',62,40,'Wood',4),
    (83,'Bedroom',57,43,'Wood',4),
    (84,'DiningRoom',78,34,'Wood',3),
    (85,'LivingRoom',73,36,'Plaster',1),
    (86,'Study',10,55,'Brick',1),
    (87,'Hallway',77,57,'Brick',2),
    (88,'Kitchen',97,25,'Wood',1),
    (89,'Hallway',35,42,'Brick',3),
    (90,'DiningRoom',56,45,'Metal',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (91,'LivingRoom',90,41,'Brick',1),
    (92,'Hallway',53,35,'Plaster',4),
    (93,'Terrace',87,25,'Plaster',4),
    (94,'Study',60,60,'Wood',5),
    (95,'Hallway',37,57,'Wood',3),
    (96,'Kitchen',71,57,'Metal',5),
    (97,'Study',83,56,'Wood',1),
    (98,'DiningRoom',90,34,'Plaster',4),
    (99,'Bedroom',18,31,'Metal',3),
    (100,'Study',5,37,'Brick',5);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (101,'DiningRoom',16,25,'Metal',4),
    (102,'Bedroom',98,50,'Brick',4),
    (103,'Study',3,22,'Brick',3),
    (104,'Terrace',17,22,'Wood',5),
    (105,'LivingRoom',71,46,'Wood',4),
    (106,'Study',72,20,'Wood',1),
    (107,'LivingRoom',36,58,'Wood',4),
    (108,'Bedroom',5,48,'Metal',4),
    (109,'DiningRoom',25,34,'Wood',1),
    (110,'DiningRoom',88,56,'Metal',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (111,'DiningRoom',90,20,'Metal',1),
    (112,'Bedroom',63,49,'Wood',2),
    (113,'DiningRoom',98,28,'Metal',4),
    (114,'Bedroom',90,57,'Metal',4),
    (115,'Study',84,27,'Brick',5),
    (116,'Bedroom',97,37,'Metal',5),
    (117,'Terrace',85,58,'Metal',2),
    (118,'Bedroom',21,53,'Wood',3),
    (119,'LivingRoom',65,31,'Metal',3),
    (120,'LivingRoom',79,41,'Metal',2);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (121,'LivingRoom',9,39,'Wood',4),
    (122,'LivingRoom',93,56,'Plaster',5),
    (123,'Terrace',83,57,'Wood',3),
    (124,'Kitchen',60,33,'Wood',3),
    (125,'Study',87,56,'Wood',3),
    (126,'LivingRoom',36,29,'Brick',2),
    (127,'Kitchen',92,28,'Metal',3),
    (128,'LivingRoom',91,30,'Metal',4),
    (129,'Terrace',80,41,'Brick',1),
    (130,'LivingRoom',4,29,'Brick',2);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (131,'LivingRoom',25,42,'Brick',3),
    (132,'DiningRoom',5,47,'Wood',5),
    (133,'Bedroom',34,35,'Wood',2),
    (134,'DiningRoom',94,41,'Plaster',5),
    (135,'Hallway',71,47,'Wood',2),
    (136,'Study',55,24,'Brick',3),
    (137,'Study',42,59,'Brick',2),
    (138,'Bedroom',89,57,'Metal',2),
    (139,'Terrace',86,26,'Wood',4),
    (140,'Study',80,47,'Plaster',3);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (141,'DiningRoom',15,31,'Metal',4),
    (142,'DiningRoom',95,26,'Metal',3),
    (143,'Study',14,32,'Wood',2),
    (144,'LivingRoom',88,31,'Wood',4),
    (145,'Bedroom',84,48,'Brick',3),
    (146,'DiningRoom',63,45,'Metal',2),
    (147,'LivingRoom',93,25,'Metal',5),
    (148,'Bedroom',57,36,'Metal',4),
    (149,'DiningRoom',82,47,'Metal',2),
    (150,'Terrace',27,55,'Metal',1);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (151,'LivingRoom',97,49,'Metal',2),
    (152,'LivingRoom',11,20,'Plaster',1),
    (153,'Hallway',93,37,'Brick',4),
    (154,'Kitchen',34,37,'Metal',3),
    (155,'LivingRoom',3,46,'Brick',5),
    (156,'Hallway',68,28,'Brick',5),
    (157,'Bedroom',33,26,'Plaster',4),
    (158,'DiningRoom',21,44,'Wood',2),
    (159,'LivingRoom',50,21,'Metal',3),
    (160,'Kitchen',46,44,'Plaster',4);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (161,'Kitchen',26,34,'Wood',5),
    (162,'LivingRoom',61,47,'Wood',3),
    (163,'Bedroom',97,33,'Metal',2),
    (164,'LivingRoom',86,60,'Plaster',3),
    (165,'Hallway',36,32,'Wood',1),
    (166,'Bedroom',74,30,'Metal',4),
    (167,'Terrace',15,21,'Metal',5),
    (168,'DiningRoom',76,55,'Wood',2),
    (169,'LivingRoom',86,59,'Brick',5),
    (170,'DiningRoom',39,38,'Wood',1);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (171,'LivingRoom',39,57,'Brick',4),
    (172,'Hallway',12,39,'Metal',2),
    (173,'Hallway',3,48,'Plaster',1),
    (174,'DiningRoom',31,43,'Metal',4),
    (175,'Kitchen',20,53,'Metal',1),
    (176,'LivingRoom',97,21,'Metal',3),
    (177,'Bedroom',69,53,'Brick',5),
    (178,'Kitchen',76,49,'Wood',3),
    (179,'Terrace',52,28,'Metal',4),
    (180,'Hallway',98,35,'Plaster',5);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (181,'Terrace',51,48,'Brick',4),
    (182,'Bedroom',40,24,'Metal',4),
    (183,'Study',24,41,'Plaster',4),
    (184,'Bedroom',96,47,'Brick',1),
    (185,'Study',44,27,'Brick',5),
    (186,'LivingRoom',10,37,'Metal',3),
    (187,'DiningRoom',22,23,'Wood',4),
    (188,'LivingRoom',8,45,'Wood',1),
    (189,'DiningRoom',84,44,'Wood',3),
    (190,'LivingRoom',62,26,'Plaster',3);
insert into room (id,name,house_id,size_m2,wall_type,wall_height)
values
    (191,'Hallway',9,29,'Wood',2),
    (192,'DiningRoom',79,49,'Wood',2),
    (193,'DiningRoom',73,35,'Metal',4),
    (194,'DiningRoom',82,29,'Metal',1),
    (195,'LivingRoom',18,20,'Brick',3),
    (196,'Bedroom',39,34,'Wood',4),
    (197,'Study',64,30,'Wood',3),
    (198,'LivingRoom',32,29,'Wood',4),
    (199,'LivingRoom',52,34,'Wood',4),
    (200,'Terrace',77,46,'Plaster',4);

-- furniture
insert into furniture (id,description,room_id)
values
    (1,'Laptop',58),
    (2,'TV',123),
    (3,'Fridge',110),
    (4,'TV',28),
    (5,'Table',191),
    (6,'Chair',8),
    (7,'TV',158),
    (8,'Chair',84),
    (9,'Oven',22),
    (10,'Couch',32);
insert into furniture (id,description,room_id)
values
    (11,'Table',6),
    (12,'Chair',98),
    (13,'Fridge',56),
    (14,'Cabinet',40),
    (15,'Table',95),
    (16,'Couch',19),
    (17,'Fridge',30),
    (18,'Laptop',148),
    (19,'Oven',16),
    (20,'Laptop',161);
insert into furniture (id,description,room_id)
values
    (21,'Chair',58),
    (22,'Laptop',28),
    (23,'Chair',188),
    (24,'Table',186),
    (25,'Laptop',55),
    (26,'Oven',62),
    (27,'Laptop',152),
    (28,'Laptop',74),
    (29,'Desk',123),
    (30,'TV',7);
insert into furniture (id,description,room_id)
values
    (31,'TV',86),
    (32,'Chair',129),
    (33,'Desk',22),
    (34,'Laptop',169),
    (35,'TV',122),
    (36,'Chair',99),
    (37,'Desk',105),
    (38,'Oven',16),
    (39,'Cabinet',4),
    (40,'Table',138);
insert into furniture (id,description,room_id)
values
    (41,'TV',90),
    (42,'Desk',96),
    (43,'Fridge',38),
    (44,'Cabinet',142),
    (45,'Table',131),
    (46,'Desk',118),
    (47,'Oven',53),
    (48,'Laptop',80),
    (49,'Desk',90),
    (50,'Table',188);

-- defects
insert into defect (id,defect,furniture_id)
values
    (1,'Damaged',31),
    (2,'Broken',28),
    (3,'Broken',45),
    (4,'Broken',5),
    (5,'Damaged',42),
    (6,'Scratch',7),
    (7,'Scratch',49),
    (8,'Scratch',40),
    (9,'Damaged',28),
    (10,'Broken',35);
insert into defect (id,defect,furniture_id)
values
    (11,'Broken',34),
    (12,'Damaged',41),
    (13,'Broken',21),
    (14,'Broken',22),
    (15,'Damaged',15),
    (16,'Broken',27),
    (17,'Scratch',37),
    (18,'Broken',14),
    (19,'Scratch',6),
    (20,'Damaged',10);
