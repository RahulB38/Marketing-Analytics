SELECT
    Stage,
    COUNT(*) AS Customers
FROM customer_journey
GROUP BY Stage
ORDER BY Customers DESC;
