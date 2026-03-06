-- How have Maven Roasters sales trended over time?

-- Calculate daily revenue.
SELECT
    transaction_date,
    SUM(transaction_qty * unit_price) AS revenue
FROM
    sales
GROUP BY
    transaction_date;