CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount NUMERIC(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 120.00, 101),
(2, '2023-01-20', 80.50, 102),
(3, '2023-02-05', 200.00, 103),
(4, '2023-02-15', 150.00, 104),
(5, '2023-03-10', 300.00, 101),
(6, '2023-03-15', 250.00, 105),
(7, '2023-03-25', 100.00, 106),
(8, '2023-04-01', 500.00, 107),
(9, '2023-04-10', 600.00, 108),
(10, '2023-04-20', 700.00, 109),
(11, '2023-05-10', 850.00, 110),
(12, '2023-05-12', 150.00, 111),
(13, '2023-06-01', 950.00, 112),
(14, '2023-06-20', 1050.00, 113);

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;