SELECT
    g.Country,
    COUNT(c.CustomerID) AS TotalCustomers
FROM customers c
JOIN geography g
ON c.GeographyID = g.GeographyID
GROUP BY g.Country
ORDER BY TotalCustomers DESC;
