create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;

SELECT DISTINCT p.p_name
FROM parts p
JOIN catalog c ON p.p_id = c.p_id;

SELECT s.s_name
FROM supplier s
WHERE NOT EXISTS (
      SELECT * FROM parts p
      WHERE NOT EXISTS (
            SELECT * FROM catalog c
            WHERE c.s_id = s.s_id AND c.p_id = p.p_id
      )
);

SELECT s.s_name
FROM supplier s
WHERE NOT EXISTS (
      SELECT * FROM parts p
      WHERE p.colour = 'Red'
        AND NOT EXISTS (
            SELECT * FROM catalog c
            WHERE c.s_id = s.s_id AND c.p_id = p.p_id
        )
);


SELECT p.p_name
FROM parts p
JOIN catalog c1 ON p.p_id = c1.p_id
JOIN supplier s ON s.s_id = c1.s_id
WHERE s.s_name = 'Acme Widget Suppliers'
AND NOT EXISTS (
       SELECT * FROM catalog c2
       WHERE c2.p_id = p.p_id AND c2.s_id <> s.s_id
);

SELECT DISTINCT c.s_id
FROM catalog c
WHERE c.cost >
      (SELECT AVG(c2.cost)
       FROM catalog c2
       WHERE c2.p_id = c.p_id);
       

SELECT p.p_name, s.s_name
FROM parts p
JOIN catalog c ON p.p_id = c.p_id
JOIN supplier s ON s.s_id = c.s_id
WHERE c.cost = (
      SELECT MAX(c2.cost)
      FROM catalog c2
      WHERE c2.p_id = p.p_id
);


SELECT p.p_name, s.s_name, c.cost
FROM catalog c
JOIN parts p ON p.p_id = c.p_id
JOIN supplier s ON s.s_id = c.s_id
WHERE c.cost = (SELECT MAX(cost) FROM catalog);


SELECT s.s_name
FROM supplier s
WHERE s.s_id NOT IN (
      SELECT c.s_id
      FROM catalog c
      JOIN parts p ON p.p_id = c.p_id
      WHERE p.colour = 'Red'
);

SELECT s.s_name, SUM(c.cost) AS total_value
FROM supplier s
JOIN catalog c ON s.s_id = c.s_id
GROUP BY s.s_name;

SELECT c.s_id
FROM catalog c
WHERE c.cost < 20
GROUP BY c.s_id
HAVING COUNT(*) >= 2;

SELECT p.p_name, s.s_name, c.cost
FROM catalog c
JOIN parts p ON p.p_id = c.p_id
JOIN supplier s ON s.s_id = c.s_id
WHERE c.cost = (
      SELECT MIN(c2.cost)
      FROM catalog c2
      WHERE c2.p_id = p.p_id
);


CREATE VIEW SupplierPartCount AS
SELECT s.s_id, s.s_name, COUNT(c.p_id) AS total_parts
FROM supplier s
LEFT JOIN catalog c ON s.s_id = c.s_id
GROUP BY s.s_id, s.s_name;

CREATE VIEW MostExpensiveSupplier AS
SELECT p.p_id, p.p_name, s.s_name, c.cost
FROM catalog c
JOIN parts p ON p.p_id = c.p_id
JOIN supplier s ON s.s_id = c.s_id
WHERE c.cost = (
      SELECT MAX(c2.cost)
      FROM catalog c2
      WHERE c2.p_id = p.p_id
);

Delimiter $$
CREATE TRIGGER Cost_Above_One
BEFORE INSERT ON catalog
FOR EACH ROW
BEGIN
    IF NEW.cost < 1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cost cannot be below 1';
    END IF;
END$$

Delimiter $$
CREATE TRIGGER Default_Cost
BEFORE INSERT ON Catalog
FOR EACH ROW
BEGIN
    IF NEW.cost IS NULL THEN
        SET NEW.cost = 50;
    END IF;
END$$



