SELECT *
FROM customers
WHERE city = 'London';
SELECT snum, sname, city, comm
FROM salespeople
WHERE comm > 0.10;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT SUM(Amount) AS total_sales
FROM orders;
SELECT
    c.cname AS customer_name,
    s.sname AS salesperson_name
FROM customers c
JOIN salespeople s
    ON c.snum = s.snum;
SELECT
    s.sname,
    COUNT(c.cnum) AS total_customers
FROM salespeople s
LEFT JOIN customers c
    ON s.snum = c.snum
GROUP BY s.snum, s.sname;
SELECT
    c.cname,
    c.city AS customer_city,
    s.sname,
    s.city AS salesperson_city
FROM customers c
JOIN salespeople s
    ON c.snum = s.snum
WHERE c.city = s.city;
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;
SELECT sname, comm
FROM salespeople
WHERE comm > (
    SELECT AVG(comm)
    FROM salespeople
);
SELECT DISTINCT
    c.cnum,
    c.cname
FROM customers c
JOIN orders o
    ON c.cnum = o.cnum;
    SELECT
    s.sname,
    SUM(o.Amount) AS total_sales
FROM salespeople s
JOIN customers c
    ON s.snum = c.snum
JOIN orders o
    ON c.cnum = o.cnum
GROUP BY s.snum, s.sname
ORDER BY total_sales DESC;