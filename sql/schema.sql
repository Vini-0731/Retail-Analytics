USE retail_db;

-- ===========================================================
-- RETAIL ANALYTICS DATABASE SCHEMA
-- =========================================================== 

-- 1. Calendar table
CREATE TABLE calendar(
id INT AUTO_INCREMENT PRIMARY KEY,
dates DATE,
weather_condition VARCHAR(10),
holiday_or_promotion INT,
seasonality VARCHAR(10)
);

-- 2. Stores table
CREATE TABLE stores (
    store_id VARCHAR(10),
    region VARCHAR(20)
);

-- 3. Products table
CREATE TABLE products (
    product_id VARCHAR(10) ,
    category VARCHAR(30),
    price DECIMAL(10,2),
    competitor_price DECIMAL(10,2)
);

-- 4. Inventory fact table
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    dates DATE,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    inventory_level INT,
    units_ordered INT,
    demand_forecast DECIMAL(10,2)
);

-- 5. Sales table
CREATE TABLE sales (
    sales_id INT  PRIMARY KEY,
    dates DATE,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    units_sold INT,
    discount INT
    );
    
