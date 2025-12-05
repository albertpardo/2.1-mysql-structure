USE pizzeriaSch;

INSERT INTO pizzeriaSch.city (city_id, province_province_id, city_name) VALUES
(1,1,'Barcelona'),
(2,1,'Badalona'),
(3,1,'Cornella'),
(4,1,'Esplugues'),
(5,1,'Sant Cugat'),
(6,2,'Reus'),
(7,3,'Lerida'),
(8,4,'Gerona');


INSERT INTO pizzeriaSch.customer (customer_id, customer_name, customer_surnames, customer_address, customer_zip_code, city_city_id, customer_phone) VALUES
-- Barcelona (1)
(1, 'Marc', 'Gómez Ruiz', 'Carrer Aragó 122', '08015', 1, '600111111'),
(2, 'Laura', 'Martí Pérez', 'Carrer Balmes 45', '08007', 1, '600111112'),
(3, 'Jordi', 'Santos Vila', 'Carrer Sants 230', '08028', 1, '600111113'),

-- Badalona (2)
(4, 'Maria', 'López Serra', 'Avinguda Martí Pujol 12', '08911', 2, '600111114'),
(5, 'David', 'Ribas Ortega', 'Carrer del Mar 88', '08912', 2, '600111115'),
(6, 'Nuria', 'Casas Vidal', 'Carrer Industria 33', '08913', 2, '600111116'),

-- Cornella (3)
(7, 'Albert', 'Puig Ferrer', 'Carrer Rubió i Ors 14', '08940', 3, '600111117'),
(8, 'Clara', 'Vila Duran', 'Carrer Verge de Montserrat 55', '08940', 3, '600111118'),
(9, 'Pol', 'Navarro Gil', 'Avinguda Salvador Allende 103', '08940', 3, '600111119'),

-- Esplugues (4)
(10, 'Elena', 'Reyes Mora', 'Carrer Laureà Miró 200', '08950', 4, '600111120'),
(11, 'Xavier', 'Carreras Bosch', 'Carrer Àngel Guimerà 25', '08950', 4, '600111121'),
(12, 'Sonia', 'Aranda Pons', 'Carrer Severo Ochoa 9', '08950', 4, '600111122'),

-- Sant Cugat (5)
(13, 'Guillem', 'Soler Martí', 'Avinguda Cerdanyola 71', '08172', 5, '600111123'),
(14, 'Irene', 'Campos Roca', 'Carrer Major 2', '08172', 5, '600111124'),
(15, 'Pau', 'Escribà Grau', 'Passeig Torre Blanca 45', '08172', 5, '600111125'),

-- Reus (6)
(16, 'Arnau', 'Miret Salvat', 'Carrer de Monterols 10', '43201', 6, '600111126'),
(17, 'Laia', 'Pedrerol Roig', 'Avinguda Sant Jordi 300', '43202', 6, '600111127'),
(18, 'Sergi', 'Cortès Florit', 'Carrer Raval de Jesús 42', '43203', 6, '600111128'),

-- Lérida (7)
(19, 'Adrià', 'Blanch Vendrell', 'Carrer Major 115', '25001', 7, '600111129'),
(20, 'Marta', 'Calvet Solé', 'Avinguda Balmes 177', '25002', 7, '600111130'),
(21, 'Roger', 'Pascual Mora', 'Carrer Cavallers 8', '25003', 7, '600111131'),

-- Gerona (8)
(22, 'Cristina', 'Gallart Prats', 'Carrer Barcelona 12', '17001', 8, '600111132'),
(23, 'Hugo', 'Molina Esteve', 'Avinguda Sant Francesc 45', '17002', 8, '600111133'),
(24, 'Emma', 'Rovira Planas', 'Carrer de la Rutlla 88', '17003', 8, '600111134');


INSERT INTO pizzeriaSch.employee
(employee_id, pizzeriaShop_pizzeriaShop_id, employee_name, employee_surnames, employee_nif, employee_phone, employee_rol)
VALUES
-- Shop 1 (Barcelona)
(1, 1, 'Marco', 'Gómez Ruiz', '12345678A', '600111001', 'Chef'),
(2, 1, 'Laura', 'Sánchez López', '23456789B', '600111002', 'Delivery'),
(3, 1, 'Daniel', 'Pérez Martín', '34567890C', '600111003', 'Delivery'),

-- Shop 2 (Barcelona)
(4, 2, 'Sergio', 'Rodríguez Alba', '45678901D', '600111004', 'Chef'),
(5, 2, 'Nuria', 'Vidal Ortega', '56789012E', '600111005', 'Delivery'),
(6, 2, 'Iván', 'Flores Mora', '67890123F', '600111006', 'Delivery'),

-- Shop 3 (Barcelona)
(7, 3, 'Pablo', 'Lozano Díaz', '78901234G', '600111007', 'Chef'),
(8, 3, 'Carla', 'Romero Gil', '89012345H', '600111008', 'Delivery'),
(9, 3, 'Jordi', 'Navarro Solé', '90123456J', '600111009', 'Delivery'),

-- Shop 4 (Badalona)
(10, 4, 'Héctor', 'Castro Vega', '11223344K', '600111010', 'Chef'),
(11, 4, 'Elena', 'Benítez Cruz', '22334455L', '600111011', 'Delivery'),
(12, 4, 'Oscar', 'Marín Roca', '33445566M', '600111012', 'Delivery'),

-- Shop 5 (Badalona)
(13, 5, 'Rafa', 'Herrera Polo', '44556677N', '600111013', 'Chef'),
(14, 5, 'Lucía', 'Campos Dalmau', '55667788P', '600111014', 'Delivery'),
(15, 5, 'Rubén', 'Salas Torres', '66778899Q', '600111015', 'Delivery'),

-- Shop 6 (Cornellà)
(16, 6, 'Mario', 'Rey Alarcón', '77889900R', '600111016', 'Chef'),
(17, 6, 'Inés', 'Acosta Reche', '88990011S', '600111017', 'Delivery'),
(18, 6, 'Victor', 'Soto Pons', '99001122T', '600111018', 'Delivery'),

-- Shop 7 (Cornellà)
(19, 7, 'David', 'Serrano Fabra', '10111213U', '600111019', 'Chef'),
(20, 7, 'Paula', 'Esteve Nadal', '12131415V', '600111020', 'Delivery'),
(21, 7, 'Álex', 'Barrios Serra', '13141516W', '600111021', 'Delivery'),

-- Shop 8 (Esplugues)
(22, 8, 'Javier', 'Solana Miró', '14151617X', '600111022', 'Chef'),
(23, 8, 'María', 'Álvarez Peña', '15161718Y', '600111023', 'Delivery'),
(24, 8, 'Gerard', 'Ribas Costa', '16171819Z', '600111024', 'Delivery'),

-- Shop 9 (Sant Cugat)
(25, 9, 'Samuel', 'Aguado Mora', '17181920A', '600111025', 'Chef'),
(26, 9, 'Clara', 'Garriga Solé', '18192021B', '600111026', 'Delivery'),
(27, 9, 'Oriol', 'Oliver Borràs', '19202122C', '600111027', 'Delivery'),

-- Shop 10 (Reus)
(28, 10, 'Julio', 'Domingo Pardo', '20212223D', '600111028', 'Chef'),
(29, 10, 'Irene', 'Martí Planas', '21222324E', '600111029', 'Delivery'),
(30, 10, 'Nil', 'Ros Martí', '22232425F', '600111030', 'Delivery'),

-- Shop 11 (Lleida)
(31, 11, 'Toni', 'Farré Bosch', '23242526G', '600111031', 'Chef'),
(32, 11, 'Eva', 'Jordà Puig', '24252627H', '600111032', 'Delivery'),
(33, 11, 'Marc', 'Roig Prat', '25262728J', '600111033', 'Delivery'),

-- Shop 12 (Girona)
(34, 12, 'Enric', 'Fortuny Casals', '26272829K', '600111034', 'Chef'),
(35, 12, 'Laia', 'Serra Font', '27282930L', '600111035', 'Delivery'),
(36, 12, 'Pol', 'Montseny Dalmau', '28293031M', '600111036', 'Delivery');

INSERT INTO pizzeriaSch.home_delivery (order_order_id, employee_employee_id, home_delivery_time) VALUES
(5, 5,  '2025-01-15 13:20:00'),
(6, 11, '2025-01-15 13:30:00'),
(7, 17, '2025-01-15 13:40:00'),
(8, 20, '2025-01-15 13:50:00'),
(9, 17, '2025-01-15 14:00:00'),
(10,23, '2025-01-15 14:20:00'),
(11,23, '2025-01-15 14:30:00'),
(12,23, '2025-01-15 14:40:00'),
(13,26, '2025-01-15 14:50:00'),
(14,26, '2025-01-15 15:00:00'),
(15,26, '2025-01-15 15:10:00'),
(16,29, '2025-01-15 15:20:00'),
(17,29, '2025-01-15 15:30:00'),
(18,29, '2025-01-15 15:40:00'),
(19,32, '2025-01-15 15:50:00'),
(20,32, '2025-01-15 16:00:00'),
(21,32, '2025-01-15 16:10:00'),
(22,35, '2025-01-15 16:20:00'),
(23,35, '2025-01-15 16:30:00'),
(24,35, '2025-01-15 16:40:00'),

-- EXTRA ORDERS
(25,11, '2025-01-16 12:20:00'),
(26,23, '2025-01-16 12:30:00'),
(27,29, '2025-01-16 12:40:00'),
(28,32, '2025-01-16 12:50:00'),
(29,35, '2025-01-16 13:00:00');


INSERT INTO pizzeriaSch.order (order_id, pizzeriaShop_pizzeriaShop_id, customer_customer_id, order_date, order_type, order_total) VALUES
-- 4 SHOP ORDERS
(1, 1, 1, '2025-01-15 12:00:00', 'Shop', 7.50),
(2, 2, 2, '2025-01-15 12:10:00', 'Shop', 8.90),
(3, 3, 3, '2025-01-15 12:20:00', 'Shop', 9.50),
(4, 4, 4, '2025-01-15 12:30:00', 'Shop', 9.20),

-- HOME ORDERS (simple)
(5, 5, 5, '2025-01-15 13:00:00', 'Home', 8.80),
(6, 4, 6, '2025-01-15 13:10:00', 'Home', 8.70),
(7, 6, 7, '2025-01-15 13:20:00', 'Home', 9.60),
(8, 7, 8, '2025-01-15 13:30:00', 'Home', 9.30),
(9, 6, 9, '2025-01-15 13:40:00', 'Home', 11.50),
(10, 8, 10, '2025-01-15 14:00:00', 'Home', 9.80),
(11, 8, 11, '2025-01-15 14:10:00', 'Home', 9.10),
(12, 8, 12, '2025-01-15 14:20:00', 'Home', 9.90),
(13, 9, 13, '2025-01-15 14:30:00', 'Home', 9.40),
(14, 9, 14, '2025-01-15 14:40:00', 'Home', 9.20),
(15, 9, 15, '2025-01-15 14:50:00', 'Home', 9.00),
(16, 10, 16, '2025-01-15 15:00:00', 'Home', 8.90),
(17, 10, 17, '2025-01-15 15:10:00', 'Home', 9.10),
(18, 10, 18, '2025-01-15 15:20:00', 'Home', 10.20),
(19, 11, 19, '2025-01-15 15:30:00', 'Home', 11.20),
(20, 11, 20, '2025-01-15 15:40:00', 'Home', 9.70),
(21, 11, 21, '2025-01-15 15:50:00', 'Home', 6.90),
(22, 12, 22, '2025-01-15 16:00:00', 'Home', 7.20),
(23, 12, 23, '2025-01-15 16:10:00', 'Home', 7.80),
(24, 12, 24, '2025-01-15 16:20:00', 'Home', 7.00),

-- HOME ORDERS EXTRA (varios productos)
(25, 4, 4,  '2025-01-16 12:00:00', 'Home', 18.60),
(26, 8, 11, '2025-01-16 12:10:00', 'Home', 22.00),
(27, 10, 17,'2025-01-16 12:20:00', 'Home', 20.80),
(28, 11, 20,'2025-01-16 12:30:00', 'Home', 20.40),
(29, 12, 23,'2025-01-16 12:40:00', 'Home', 18.70);

INSERT INTO pizzeriaSch.order_products (order_order_id, product_product_id, order_products_quantity) VALUES
-- SIMPLE ORDERS 1 product (product_id = customer_id)
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(6,6,1),
(7,7,1),
(8,8,1),
(9,9,1),
(10,10,1),
(11,11,1),
(12,12,1),
(13,13,1),
(14,14,1),
(15,15,1),
(16,16,1),
(17,17,1),
(18,18,1),
(19,19,1),
(20,20,1),
(21,21,1),
(22,22,1),
(23,23,1),
(24,24,1),

-- EXTRA ORDER 25 (customer 4, shop 4)
(25,8,1),
(25,25,1),
(25,30,1),

-- EXTRA ORDER 26 (customer 11, shop 8)
(26,12,1),
(26,27,1),
(26,29,1),
(26,2,1),

-- EXTRA ORDER 27 (customer 17, shop 10)
(27,3,2),
(27,26,1),

-- EXTRA ORDER 28 (customer 20, shop 11)
(28,6,1),
(28,14,1),
(28,28,1),

-- EXTRA ORDER 29 (customer 23, shop 12)
(29,1,1),
(29,19,1);

INSERT INTO pizzeriaSch.pizza_categories  (pizza_categories_id, pizza_categories_name) VALUES
(1,'Gluten free'),
(2,'Clasic'),
(3,'Children'),
(4,'Vegans'),
(5,'YourOwn'),
(6,'Master');

INSERT INTO pizzeriaSch.pizza_has_category (product_product_id, pizza_categories_pizza_categories_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 5),
(17, 5),
(18, 5),
(19, 6),
(20, 6);

INSERT INTO pizzeriaSch.pizzeriaShop (pizzeriaShop_id, pizzeriaShop_address, pizzeriaShop_zip_code, city_city_id) VALUES

-- Barcelona (city_id = 1)
(1, 'Carrer Major 12', '08001', 1),
(2, 'Carrer Verdi 45', '08012', 1),
(3, 'Carrer Creu Coberta 88', '08014', 1),

-- Badalona (city_id = 2)
(4, 'Passeig Marítim 21', '08910', 2),
(5, 'Carrer Sant Bru 33', '08911', 2),

-- Cornellà (city_id = 3)
(6, 'Avinguda del Parc 10', '08940', 3),
(7, 'Carrer Fontsanta 77', '08940', 3),

-- Esplugues (city_id = 4)
(8, 'Carrer Laureà Miró 61', '08950', 4),

-- Sant Cugat (city_id = 5)
(9, 'Carrer de la Torre 14', '08172', 5),

-- Reus (city_id = 6)a
(10, 'Carrer del Vent 22', '43201', 6),

-- Lleida (city_id = 7)
(11, 'Carrer Alta 19', '25001', 7),

-- Girona (city_id = 8)
(12, 'Carrer Nou 8', '17001', 8);

INSERT INTO pizzeriaSch.product (product_id, product_type, product_name, product_description, product_image, product_price) VALUES
(1, "Pizza", "Margherita", "Classic tomato, mozzarella and basil.", "img/pizza_01.jpg", 7.50),
(2, "Pizza", "Pepperoni", "Mozzarella and spicy pepperoni.", "img/pizza_02.jpg", 8.90),
(3, "Pizza", "BBQ Chicken", "Chicken, BBQ sauce and onions.", "img/pizza_03.jpg", 9.50),
(4, "Pizza", "Four Cheese", "Mozzarella, cheddar, parmesan and gorgonzola.", "img/pizza_04.jpg", 9.20),
(5, "Pizza", "Hawaiian", "Ham, pineapple and mozzarella.", "img/pizza_05.jpg", 8.80),
(6, "Pizza", "Veggie Garden", "Peppers, onions, olives and mushrooms.", "img/pizza_06.jpg", 8.70),
(7, "Pizza", "Carbonara", "Cream, bacon and parmesan.", "img/pizza_07.jpg", 9.60),
(8, "Pizza", "Diavola", "Spicy salami & chili oil.", "img/pizza_08.jpg", 9.30),
(9, "Pizza", "Truffle Special", "Truffle cream and mushrooms.", "img/pizza_09.jpg", 11.50),
(10,"Pizza",  "Prosciutto", "Italian prosciutto & mozzarella.", "img/pizza_10.jpg", 9.80),
(11, "Pizza", "Mediterranean", "Feta, olives, tomato and oregano.", "img/pizza_11.jpg", 9.10),
(12, "Pizza", "Buffalo Chicken", "Spicy buffalo sauce & chicken.", "img/pizza_12.jpg", 9.90),
(13, "Pizza", "Spinach Ricotta", "Spinach, ricotta and garlic.", "img/pizza_13.jpg", 9.40),
(14, "Pizza", "Pesto Delight", "Pesto base with cherry tomatoes.", "img/pizza_14.jpg", 9.20),
(15, "Pizza", "Mushroom Lovers", "Portobello, mozzarella & herbs.", "img/pizza_15.jpg", 9.00),
(16, "Pizza", "Tuna & Onion", "Tomato base with tuna & onion.", "img/pizza_16.jpg", 8.90),
(17, "Pizza", "Chili Pepper", "Tomato, mozzarella & jalapeños.", "img/pizza_17.jpg", 9.10),
(18, "Pizza", "Supreme", "Pepperoni, sausage, peppers & mushrooms.", "img/pizza_18.jpg", 10.20),
(19, "Pizza", "Burrata Dream", "Burrata on a fresh tomato base.", "img/pizza_19.jpg", 11.20),
(20, "Pizza", "Garlic Parma", "Garlic cream, parmesan & parsley.", "img/pizza_20.jpg", 9.70),

-- 5 HAMBURGERS
(21, "Hamburger", "Classic Burger", "Beef patty with lettuce, tomato and cheese.", "img/burger_classic.jpg", 6.90),
(22, "Hamburger", "Cheeseburger", "Beef patty with cheddar cheese and pickles.", "img/burger_cheese.jpg", 7.20),
(23, "Hamburger", "BBQ Burger", "Beef patty, bacon and BBQ sauce.", "img/burger_bbq.jpg", 7.80),
(24, "Hamburger", "Chicken Burger", "Crispy chicken with mayo and lettuce.", "img/burger_chicken.jpg", 7.00),
(25, "Hamburger", "Veggie Burger", "Grilled veggie patty with tomato and lettuce.", "img/burger_veggie.jpg", 6.50),

-- 5 BEVERAGES
(26, "Berverage", "Coca-Cola", "330ml refreshing soda.", "img/drink_coke.jpg", 1.80),
(27, "Berverage", "Water", "500ml bottled mineral water.", "img/drink_water.jpg", 1.20),
(28, "Berverage", "Orange Juice", "Freshly squeezed orange juice.", "img/drink_orange.jpg", 2.50),
(29, "Berverage", "Iced Tea", "Cold tea with lemon flavor.", "img/drink_iced_tea.jpg", 2.00),
(30, "Berverage", "Beer", "330ml local craft beer.", "img/drink_beer.jpg", 2.80);

INSERT INTO pizzeriaSch.province (province_id, province_name) VALUES
(1,'Barcelona'),
(2,'Tarragona'),
(3,'Lerida'),
(4,'Gerona');

