USE w3schools;
DROP TRIGGER IF EXISTS insert_order_date;

DELIMITER $$

CREATE TRIGGER insert_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = current_date();
END $$

DELIMITER ;

INSERT INTO w3schools.orders (CustomerID, EmployeeID, ShipperID)
VALUES (4, 2, 2);

SELECT * FROM w3schools.orders WHERE CustomerID = 4;
