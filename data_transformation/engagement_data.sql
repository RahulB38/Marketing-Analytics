SELECT
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    UPPER(REPLACE(ContentType,'Socialmedia','Social Media')) AS ContentType,
    CAST(LEFT(ViewsClicksCombined,LOCATE('-',ViewsClicksCombined)-1) AS UNSIGNED) AS Views,
    CAST(SUBSTRING_INDEX(ViewsClicksCombined,'-',-1) AS UNSIGNED) AS Clicks,
    Likes,
    STR_TO_DATE(EngagementDate,'%d.%m.%Y') AS EngagementDate
FROM engagement_data;
