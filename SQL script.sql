SELECT * FROM salespeople;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;
SELECT c.cname, s.sname
FROM customers c
JOIN salespeople s ON c.snum = s.snum;
SELECT sname, comm
FROM salespeople
WHERE comm > (
    SELECT AVG(comm) FROM salespeople
);
SELECT SUM(Amount) AS total_sales
FROM orders;