SELECT
    g.Country,
    ROUND(AVG(r.Rating),2) AS AverageRating,
    COUNT(r.ReviewID) AS Reviews
FROM customer_reviews r
JOIN customers c
ON r.CustomerID = c.CustomerID
JOIN geography g
ON c.GeographyID = g.GeographyID
GROUP BY g.Country
ORDER BY AverageRating DESC;
