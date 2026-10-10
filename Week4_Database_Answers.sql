QUESTION 1: 
--Write an SQL query to show the total payment amount for each payment date from payments table.
USE sales;
SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

QUESTION 2: 
--Write an SQL query to find the average credit limit of each customer from customers table.
USE sales;
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

QUESTION 3: 
--Write an SQL query to find the total price of products ordered from orderdetails table.
USE sales;
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

QUESTION 4:
--Write an SQL query to find the highest payment amount for each check number from payments table.
USE sales;
SELECT
    checkNumber,
    MAX(amount) AS highest_payment_amount
FROM payments
GROUP BY checkNumber;
