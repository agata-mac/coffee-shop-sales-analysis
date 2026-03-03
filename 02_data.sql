-- Insert data into products table.

INSERT INTO products (
    product_id,
    product_category,
    product_type,
    product_detail
)
    SELECT DISTINCT
        product_id,
        product_category,
        product_type,
        product_detail
    FROM
        coffee_shop_sales;
        
-- Insert data into stores table.

INSERT INTO stores (
    store_id,
    store_location
)
    SELECT DISTINCT
        store_id,
        store_location
    FROM
        coffee_shop_sales;
        
-- Insert data into sales table.

INSERT INTO sales (
    transaction_id,
    transaction_date,
    transaction_time,
    transaction_qty,
    store_id,
    product_id,
    unit_price
)
    SELECT DISTINCT
        transaction_id,
        TO_DATE(transaction_date, 'DD.MM.YYYY'),
        transaction_time,
        transaction_qty,
        store_id,
        product_id,
        unit_price
    FROM
        coffee_shop_sales;