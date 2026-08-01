SELECT
    c.CustomerName,
    COUNT(j.CustomerID) AS WebsiteVisits,
    COUNT(r.ReviewID) AS ReviewsWritten
FROM customers c
LEFT JOIN customer_journey j
ON c.CustomerID = j.CustomerID
LEFT JOIN customer_reviews r
ON c.CustomerID = r.CustomerID
GROUP BY c.CustomerName
ORDER BY WebsiteVisits DESC;
