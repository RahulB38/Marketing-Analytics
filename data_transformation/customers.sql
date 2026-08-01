SELECT
    r.ReviewID,
    r.CustomerID,
    r.ProductID,
    p.ProductName,
    p.Category,
    p.Price,
    r.ReviewDate,
    r.Rating,
    r.ReviewText
FROM customer_reviews r
LEFT JOIN products p
ON r.ProductID = p.ProductID;
