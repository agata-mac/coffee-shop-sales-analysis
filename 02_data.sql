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
        
  