SELECT
    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    TRIM(
        REPLACE(
            REPLACE(
                REPLACE(ReviewText, '   ', ' '),
            '  ', ' '),
        '  ', ' ')
    ) AS ReviewText
FROM customer_reviews;
