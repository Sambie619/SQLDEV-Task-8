--1. Stored Procedure: Get Orders by Customer
sql
Copy
Edit

DELIMITER //

CREATE PROCEDURE GetOrdersByCustomer(IN cust_id INT)
BEGIN
    SELECT orderid, orderdate, amount
    FROM Orders
    WHERE customerid = cust_id;
END //

DELIMITER ;

CALL GetOrdersByCustomer(1);
--2Stored Procedure with Conditional Logic
DELIMITER //

CREATE PROCEDURE GetCustomerType(IN cust_id INT)
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(amount) INTO total
    FROM Orders
    WHERE customerid = cust_id;

    IF total >= 500 THEN
        SELECT 'Premium Customer' AS status;
    ELSE
        SELECT 'Regular Customer' AS status;
    END IF;
END //

DELIMITER ;
CALL GetCustomerType(1);
DELIMITER //
--User-Defined Function (UDF): Total Spend by Customer
CREATE FUNCTION TotalSpend(cust_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(amount) INTO total
    FROM Orders
    WHERE customerid = cust_id;

    RETURN total;
END //

DELIMITER ;
SELECT name, TotalSpend(customerid) AS total_spent
FROM Customers;