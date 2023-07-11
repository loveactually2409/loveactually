SELECT * FROM house_data.raw_sales;

SELECT * FROM house_data.ma_lga_12345;

SELECT postcode,  AVG(price) AS average_value 
FROM house_data.raw_sales
GROUP BY postcode
ORDER BY average_value
LIMIT 5;

SELECT bedrooms, COUNT(*)
FROM house_data.ma_lga_12345
GROUP BY bedrooms;

SELECT 
    datesold, propertyType,
    AVG(price) AS average_price,
   YEAR(datesold) AS year
FROM house_data.raw_sales
WHERE propertyType = 'house'
GROUP BY datesold, propertyType
ORDER BY year, average_price DESC
LIMIT 5;




