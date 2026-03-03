-- Coffee Shop Sales Analysis
-- Table schema

CREATE TABLE coffee_shop_sales (
    transaction_id     NUMBER PRIMARY KEY,
    transaction_date   DATE,
    transaction_time   VARCHAR2(8),
    transaction_qty    NUMBER,
    store_id           NUMBER,
    store_location     VARCHAR2(50),
    product_id         NUMBER,
    unit_price         NUMBER(5, 2),
    product_category   VARCHAR2(50),
    product_type       VARCHAR2(50),
    product_detail     VARCHAR2(100)
);

-- Table Products

CREATE TABLE products (
    product_id         NUMBER PRIMARY KEY,
    product_category   VARCHAR2(50),
    product_type       VARCHAR2(50),
    product_detail     VARCHAR2(100),
    unit_price         NUMBER(5, 2)
);

-- Table Stores

CREATE TABLE stores (
    store_id         NUMBER PRIMARY KEY,
    store_location   VARCHAR2(50)
)
