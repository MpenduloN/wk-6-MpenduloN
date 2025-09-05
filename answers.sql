CREATE database salesDB;
USE salesDB;

SELECT employees.firstName, employees.lastName, employees.email, offices.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;

SELECT products.productName, products.productVendor, productlines.productline
FROM products
LEFT JOIN productlines ON products.productlines= productline.productlines;

SELECT orders.orderDate, orders.shippedDate, orders.status, orders.customerNumber
FROM customers
RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber
LIMIT 10;
