--1. Combine the menu_items and order_details tables into a single table
SELECT * FROM menu_items
SELECT * FROM order_details

SELECT * 
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id

--2. What were the least and most ordered items? What categories were they in?
SELECT item_name, category, COUNT(item_name) 
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
GROUP BY item_name, category
ORDER BY COUNT(item_name) DESC

SELECT category, COUNT(item_name) 
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
GROUP BY category
ORDER BY COUNT(item_name) DESC
--Looking up how many items are in each category

--3. What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price)
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
GROUP BY order_id
ORDER BY SUM(price) DESC
LIMIT 5

--4. View the details of the highest spend order. What insights can you gather from the results?
SELECT *
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
WHERE order_id = '440'

SELECT category, COUNT(category)
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
WHERE order_id = '440'
GROUP BY category
--Seeing how many of each category was bought

--BONUS: View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT *
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
WHERE order_id IN ('440', '2075', '1957', '330', '2675')

SELECT category, COUNT(category)
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
WHERE order_id IN ('440', '2075', '1957', '330', '2675')
GROUP BY category
--Looks at how  many of each category was bought by each order

SELECT order_id, category, COUNT(item_name), item_name, price
FROM order_details JOIN menu_items
	ON order_details.item_id = menu_items.menu_item_id
WHERE order_id IN ('440', '2075', '1957', '330', '2675')
GROUP BY order_id, category, item_name, price
--Builds on last query to see what specific items were bought and their prices