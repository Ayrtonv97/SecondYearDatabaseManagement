--Q1: Percentage of items sent by first class mail? --

SELECT ROUND(((SELECT COUNT (POSTAGE_CLASS)
FROM BASKET_ITEM
WHERE POSTAGE_CLASS = 1)/
(SELECT COUNT (POSTAGE_CLASS)
FROM BASKET_ITEM) *100), 2) AS "PERCENT"
FROM BASKET_ITEM
WHERE POSTAGE_CLASS = 1
GROUP BY POSTAGE_CLASS;

--Q2: What is the average credit rating of factory owner? --
SELECT ROUND
(AVG(CREDIT_RATING) , 2) "average"
FROM FACTORY
WHERE FACTORY_OWNER = 'Mr Big';

--Q3: Construct a table with the total number of customers in each country --
CREATE TABLE Q3 AS
SELECT COUNTRY, COUNT (UNIQUE NAME) AS 'Number of customers'
FROM YODA_59
GROUP BY COUNTRY
ORDER BY COUNTRY;

--Q4: Create a table with the total stock count for each item --
CREATE TABLE TOTAL_STOCK AS
SELECT UNIQUE ITEM_ID, SUM (STOCK) AS "TOTAL"
FROM STOCK
GROUP BY ITEM_ID
ORDER BY ITEM_ID;
