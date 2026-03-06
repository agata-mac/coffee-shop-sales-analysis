-- How have Maven Roasters sales trended over time?

-- Calculate daily revenue.
SELECT
    transaction_date,
    SUM(transaction_qty * unit_price) AS revenue
FROM
    sales
GROUP BY
    transaction_date;
    
-- Calculate monthly revenue.
SELECT
    TO_CHAR(transaction_date, 'YYYY-MM') AS month,
    SUM(transaction_qty * unit_price) AS revenue
FROM
    sales
GROUP BY
    TO_CHAR(transaction_date, 'YYYY-MM');
    
-- Calculate yearly revenue.
SELECT
    TO_CHAR(transaction_date, 'YYYY') AS year,
    SUM(transaction_qty * unit_price) AS revenue
FROM
    sales
GROUP BY
    TO_CHAR(transaction_date, 'YYYY');