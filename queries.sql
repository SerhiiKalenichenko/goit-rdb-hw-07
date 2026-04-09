-- ПЕРЕХІД ДО БД

USE goit_rdb_hw_03;

-- ПУНКТ 1 — YEAR, MONTH, DAY FROM DATE

SELECT
    id,
    date,
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    DAY(date) AS order_day
FROM orders;

-- ПУНКТ 2 — ADD 1 DAY TO DATE

SELECT
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_1_day
FROM orders;

-- ПУНКТ 3 — UNIX TIMESTAMP

SELECT
    id,
    date,
    UNIX_TIMESTAMP(date) AS date_timestamp
FROM orders;

-- ПУНКТ 4 — COUNT ROWS IN DATE RANGE

SELECT
    COUNT(*) AS orders_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- ПУНКТ 5 — JSON OBJECT

SELECT
    id,
    date,
    JSON_OBJECT(
        'id', id,
        'date', date
    ) AS order_json
FROM orders;
