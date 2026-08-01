SELECT
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    CASE
        WHEN ContentType = 'Socialmedia' THEN 'Social Media'
        ELSE ContentType
    END AS ContentType,
    CAST(SUBSTRING_INDEX(ViewsClicksCombined, '-', 1) AS UNSIGNED) AS Views,
    CAST(SUBSTRING_INDEX(ViewsClicksCombined, '-', -1) AS UNSIGNED) AS Clicks,
    Likes,
    DATE(EngagementDate) AS EngagementDate
FROM engagement_data
WHERE ContentType <> 'Newsletter';
