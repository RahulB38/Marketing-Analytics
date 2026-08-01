SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    CASE
        WHEN Price < 50 THEN 'Budget'
        WHEN Price BETWEEN 50 AND 200 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS PriceCategory,
    CASE
        WHEN Price < 50 THEN 1
        WHEN Price BETWEEN 50 AND 200 THEN 2
        ELSE 3
    END AS PriceCategoryOrder
FROM products;
