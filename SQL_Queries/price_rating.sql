SELECT
    p.ProductName,
    p.Price,
    ROUND(AVG(r.Rating),2) AS AverageRating
FROM products p
JOIN customer_reviews r
ON p.ProductID = r.ProductID
GROUP BY
    p.ProductName,
    p.Price;
