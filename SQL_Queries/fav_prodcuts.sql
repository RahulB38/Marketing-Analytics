SELECT
    p.ProductName,
    COUNT(j.CustomerID) AS TotalVisits
FROM customer_journey j
JOIN products p
ON j.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalVisits DESC;
