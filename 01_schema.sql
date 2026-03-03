-- Coffee Shop Sales Analysis
-- Table: coffee_shop_sales
-- Description: Staging table used for initial CSV data import.
-- Data from this table is later normalized into products, stores and sales tables.

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

-- Table: Products
-- Unique product informations.

CREATE TABLE products (
    product_id         NUMBER PRIMARY KEY,
    product_category   VARCHAR2(50),
    product_type       VARCHAR2(50),
    product_detail     VARCHAR2(100),
    unit_price         NUMBER(5, 2)
);

-- Table: Stores
-- Unique stores location informations.

CREATE TABLE stores (
    store_id         NUMBER PRIMARY KEY,
    store_location   VARCHAR2(50)
);

-- Table: Sales
-- Contains detailed sales records.

CREATE TABLE sales (
    transaction_id     NUMBER PRIMARY KEY,
    transaction_date   DATE,
    transaction_time   VARCHAR2(8),
    transaction_qty    NUMBER,
    store_id           NUMBER,
    product_id         NUMBER,
    CONSTRAINT fk_sales_stores FOREIGN KEY ( store_id )
        REFERENCES stores ( store_id ),
    CONSTRAINT fk_sales_product FOREIGN KEY ( product_id )
        REFERENCES products ( product_id )
);