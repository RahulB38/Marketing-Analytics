SELECT
    p.ProductName,
    COUNT(r.ReviewID) AS TotalReviews,
    ROUND(AVG(r.Rating),2) AS AverageRating
FROM customer_reviews r
JOIN products p
ON r.ProductID = p.ProductID
GROUP BY
    p.ProductName
ORDER BY AverageRating DESC;
