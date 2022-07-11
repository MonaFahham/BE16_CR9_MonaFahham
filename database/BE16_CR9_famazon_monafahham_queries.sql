-- query 1
SELECT COUNT(employee.first_name) FROM employee WHERE employee.first_name="Isabelita";

-- query 2
SELECT * FROM product WHERE product.product_name = "JBL Flip 5 Bluetooth Box";

-- query 3
SELECT customer.first_name FROM `customer` WHERE customer.customer_id="16";

-- query 4
SELECT * FROM customer
INNER JOIN customer_product ON customer_id=customer_product.fk_customer_id;

-- query 5
SELECT product.product_name, product.price FROM `product` 
INNER JOIN shipping_company ON product.product_id=shipping_company.fk_product_id;

-- query 6
SELECT employee.first_name, employee.last_name,employee.email FROM employee
INNER JOIN company ON employee.employee_id=company.fk_employee_id;

-- query 7
SELECT customer.customer_id, customer.last_name, customer.email FROM customer
LEFT JOIN invoice ON customer.customer_id = invoice.fk_customer_id;

-- query 8
SELECT product.product_name,COUNT(product.quantity) FROM product
INNER JOIN company ON company.company_id= product.fk_company_id;

-- query 9
SELECT DISTINCT product.quantity FROM product WHERE product.quantity > 50;

-- query 10
SELECT product.product_name , product.quantity
FROM product
WHERE product.quantity > 50;

-- query 11
SELECT DISTINCT shipping_company.name FROM shipping_company
WHERE shipping_company.department="Support";

-- query 12
SELECT COUNT(product.product_name) FROM product
INNER JOIN shipping_company ON shipping_company.fk_product_id = product.product_id
INNER JOIN address ON address.address_id=shipping_company.fk_address_id WHERE address.country="Russia";