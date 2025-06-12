--1. View order_details table. What is the date range of this table?
SELECT * FROM order_details

SELECT MIN(order_date), MAX(order_date) from order_details

--2. How many orders were made within this date range? How many items were ordered within this date range?
SELECT COUNT(DISTINCT order_id) from order_details

SELECT COUNT(order_id) from order_details

--3. Which orders had the most number of items?
SELECT order_id, COUNT(item_id) FROM order_details
GROUP BY order_id
ORDER BY COUNT(item_id) DESC

--4. How many orders had more than 12 items?
SELECT COUNT(*) FROM
(SELECT order_id, COUNT(item_id) FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12)
--Created a group-by to sort orders that had 12 items, created sub-query to count orders from filter