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
