-- TASK 1 — EXTRACT YEAR, MONTH, DAY

SELECT
    id,
    date,
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    DAY(date) AS order_day
FROM orders
ORDER BY id;


-- TASK 2 — ADD 1 DAY

SELECT
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_1_day
FROM orders
ORDER BY id;


-- TASK 3 — UNIX TIMESTAMP

SELECT
    id,
    date,
    UNIX_TIMESTAMP(date) AS date_timestamp
FROM orders
ORDER BY id;


-- TASK 4 — COUNT IN DATE RANGE (PRODUCTION-SAFE)

SELECT
    COUNT(*) AS orders_count
FROM orders
WHERE date >= '1996-07-10 00:00:00'
  AND date <  '1996-10-08 00:00:00';


-- TASK 5 — JSON OBJECT (CONTROLLED FORMAT)

SELECT
    id,
    date,
    JSON_OBJECT(
        'id', id,
        'date', DATE_FORMAT(date, '%Y-%m-%d %H:%i:%s')
    ) AS order_json
FROM orders
ORDER BY id;
