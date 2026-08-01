-- Total Revenue
SELECT SUM(transaction_qty * unit_price) AS total_revenue
FROM coffee_sales;


-- Total Orders
SELECT COUNT(transaction_id) AS total_orders
FROM coffee_sales;


-- Average Sales
SELECT AVG(transaction_qty * unit_price) AS average_sales
FROM coffee_sales;


-- Category Wise Revenue
SELECT 
    product_category,
    SUM(transaction_qty * unit_price) AS revenue
FROM coffee_sales
GROUP BY product_category
ORDER BY revenue DESC;


-- Top Selling Products
SELECT 
    product_type,
    SUM(transaction_qty) AS total_quantity
FROM coffee_sales
GROUP BY product_type
ORDER BY total_quantity DESC;
