-- Mandatory queries

-- Total invoices number for a customer within a specific period

SELECT c.client_name AS Client, COUNT(s.sales_id) AS TotalInvocesNum FROM opticsSch.sales s JOIN opticsSch.client c ON s.client_client_id = c.client_id WHERE c.client_name = "Carlos Moreno" AND s.sales_date BETWEEN "2025-01-01" AND "2025-12-01";

-- Glassees brands list sold by an employee during a given year

SELECT DISTINCT s.sales_id, e.employee_name AS Employee, g.glasses_brand AS Glass_Brand,  g.glasses_graduation_left AS Left_graduation, g.glasses_graduation_right AS Right_graduation, g.glasses_lens_color AS Lens_color, g.glasses_frame_color AS Frame FROM opticsSch.sales s JOIN opticsSch.employee e ON s.employee_employee_id = e.employee_id JOIN opticsSch.sales_has_glasses shg ON shg.sales_sales_id = s.sales_id JOIN opticsSch.glasses g ON g.glasses_id = shg.glasses_glasses_id WHERE e.employee_name = "Manuel" AND YEAR(s.sales_date) = 2025;

-- Suppliers list who have provided glasseses that were successfully sold by optics

SELECT DISTINCT sup.supplier_name AS Supplier_Name FROM opticsSch.sales s JOIN opticsSch.sales_has_glasses shg ON shg.sales_sales_id = s.sales_id JOIN opticsSch.glasses g ON g.glasses_id = shg.glasses_glasses_id JOIN opticsSch.supplier sup ON g.supplier_supplier_id = sup.supplier_id;
