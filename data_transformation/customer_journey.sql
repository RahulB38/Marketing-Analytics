SELECT
    CustomerID,
    ProductID,
    Stage,
    COUNT(*) AS TotalVisits,
    AVG(Duration) AS AvgDuration
FROM customer_journey
GROUP BY
    CustomerID,
    ProductID,
    Stage;
