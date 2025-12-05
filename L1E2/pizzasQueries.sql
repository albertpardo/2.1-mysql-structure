-- Total 'Beverages' number sold by a city

SELECT ci.city_name AS City, SUM(ordprod.order_products_quantity) AS TotalBerverage  FROM pizzeriaSch.order ord
JOIN pizzeriaSch.order_products ordprod ON ord.order_id = ordprod.order_order_id 
JOIN pizzeriaSch.product prod ON prod.product_id = ordprod.product_product_id
JOIN pizzeriaSch.pizzeriaShop pshop ON pshop.pizzeriaShop_id = ord.pizzeriaShop_pizzeriaShop_id
JOIN pizzeriaSch.city ci ON ci.city_id = pshop.city_city_id
WHERE prod.product_type = "Berverage" AND ci.city_name = "Esplugues";


-- Total orders delivered by a specific employe
-- Example 1 
SELECT e.employee_name AS name , e.employee_surnames AS Surnames , COUNT(o.order_id) AS TotalOrders FROM pizzeriaSch.order o
JOIN pizzeriaSch.pizzeriaShop ps ON ps.pizzeriaShop_id = o.pizzeriaShop_pizzeriaShop_id
JOIN pizzeriaSch.employee e ON e.pizzeriaShop_pizzeriaShop_id = ps.pizzeriaShop_id
WHERE e.employee_name = "Laia" AND e.employee_surnames = "Serra Font";

-- Example 2
SELECT e.employee_name AS name , e.employee_surnames AS Surnames , COUNT(o.order_id) AS TotalOrders FROM pizzeriaSch.order o
JOIN pizzeriaSch.pizzeriaShop ps ON ps.pizzeriaShop_id = o.pizzeriaShop_pizzeriaShop_id
JOIN pizzeriaSch.employee e ON e.pizzeriaShop_pizzeriaShop_id = ps.pizzeriaShop_id
WHERE e.employee_name = "Clara" AND e.employee_surnames = "Garriga Solé";
