USE opticsSch;

INSERT INTO opticsSch.address (address_id, address_street, address_number, address_floor, address_door, address_city, address_zip, address_country ) VALUES
(1,'Calle Berlín',17,'1','1','Barcelona','08014','España'),
(2,'Avenida Diagonal',5,'2','1','Barcelona','08019','España'),
(3,'Plaza del Sol',20,'4','2','Barcelona','08012','España'),
(4,'Avenida Medidiana',297,'1','4','Barcelona','08027','España'),
(5,'Calle del Montseny',12,'5','1','Barcelona','08012','España'),
(6,'Calle Aribau',60,'2','4','Barcelona','08011','España'),
(7,'Calle Muntaner',30,'1','3','Barcelona','08011','España'),
(8,'Calle Felipe II',27,'6','4','Barcelona','08027','España'),
(9,'Calle de Bac de roda',136,'2','2','Barcelona','08020','España'),
(10,'Calle de Copernic',15,'4','4','Barcelona','08021','España');

INSERT INTO opticsSch.client (client_id, client_recommendedBy_client_id, client_name, client_email, client_phone, client_registation_date, address_address_id) VALUES
(1,NULL,'Carlos Moreno','car@gmail.com','934203277','2025-05-05 00:00:00',2),
(2,NULL,'Ana Pi','anpi@gmail.com','600600600','2025-05-05 00:00:00',2),
(3,NULL,'Pedro Romero','pedromero@gmail.com','621621621','2025-05-06 00:00:00',3),
(4,2,'Sonia Pi','sonpi@gmail.com','670770780','2025-06-02 00:00:00',4),
(5,1,'Maria Moreno','marmoreno@gmail.com','612128129','2025-06-03 00:00:00',5),
(6,1,'Rodolfo Marín','romarin@gmail.com','633489478','2025-06-29 00:00:00',2);

INSERT INTO opticsSch.employee (employee_id, employee_name) VALUES
(1,'Carlos'),
(2,'Rosa'),
(3,'Anastasia'),
(4,'Manuel'),
(5,'Sol'),
(6,'Antonio');

INSERT INTO opticsSch.supplier (supplier_id, supplier_name, supplier_phone, supplier_fax, supplier_NIF, address_address_id) VALUES
(1,'BlisBlas','934401571','934401572','B23456789',10),
(2,'Indo','932304070','932304071','B34567892',9),
(3,'Affledour','933303030','933303031','B45678923',8),
(4,'Romanini','934502020','934502021','B56789234',7),
(5,'Ferali','935602318','935602319','B67892345',6);

INSERT INTO opticsSch.glasses (glasses_id, supplier_supplier_id, glasses_brand, glasses_graduation_left, glasses_graduation_right, glasses_lens_color, glasses_frame_type, glasses_frame_color, glasses_price) VALUES
(1,1,'GlassGlass',-1.00,-1.00,'Transparent','Pasta','Marrón',45),
(2,2,'Indo One',-2.50,-2.50,'Transparent','Pasta','Negro',60),
(3,2,'Indo One',-1.50,-1.75,'Oscuro','Pasta','Azul',71),
(4,4,'GreenGreen',1.25,1.75,'Transparente','Flotante','Verde',80),
(5,1,'GlassGlass',-3.20,-3.75,'Oscuro','Flotante','Naranje',51),
(6,3,'Affledour Start',-4.20,-4.20,'Oscuro','Metálica','Aluminio',80),
(7,3,'Affledour Start',-3.25,-3.25,'Transparente','Metálica','Aluminio',75);

INSERT INTO opticsSch.sales (sales_id, sales_date, employee_employee_id, client_client_id) VALUES
(1,'2025-05-05 00:00:00',1,1),
(2,'2025-05-05 00:00:00',1,2),
(3,'2025-05-06 00:00:00',1,3),
(4,'2025-06-02 00:00:00',2,4),
(5,'2025-06-10 00:00:00',3,1),
(6,'2025-07-10 00:00:00',4,2);

INSERT INTO opticsSch.sales_has_glasses (sales_sales_id, glasses_glasses_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(6,7);
