This analysis looks at a fictional restaurant's database and asks to answer customer behavior and operatioal questions such as popularity of food categories/menu items and the highest spends. This analysis was done through SQL queries in PostgreSQL, and each objective has its own query page in this repository. I have tried to include images in the readme for specific questions. </br>
<br/>
This project was categorized into 3 objectives: <br/>
1. Exploring the items table
2. Exploring the orders table
3. Analyzing Customer Behavior<br/>
<br/>
Within each objective, there were questions to answer.<br/>
<br/>
For Objective 1 there were 3 questions to answer: <br/>
<br/>
1. What are the least and most expensive items on the menu?<br/>
The least expensive item on the menu was the edamame at $5.00, while the most expensive item was the shrimp scampi at $19.95.<br/>
<br/>
2. How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?<br/>
There are 9 Italian dishes on the menu with the least and most expensive Italian dishes being spaghetti at $14.50 and shrimp scampi at $19.95 respectively.<br/>
<br/>
3. How many dishes are in each category? What is the average dish price within each category?<br/>
There are 4 categories of food (American, Asian, Mexican, and Italian) and in each category there are 6, 8, 9, and 9 dishes. The average price of an American dish is $10.07, an Asian dish is $13.48, a Mexican dish is $11.80, and an Italian dish is $16.75<br/>
<br/>
<br/>
For Objective 2 there were 4 questions to answer.<br/>
<br/>
1. What is the date range of the table?<br/>
The table ranges from January 1, 2023 to March 31, 2023<br/>
<br/>

**2. How many orders were made within this date range? How many items were ordered within this date range?<br/>**
The amount of orders and items ordered within this date range are 5370 and 12234 respectively.<br/>
<br/>

**3. Which orders had the most number of items?<br/>**
This question can be more easily seen in the sql file, but the order numbers with the most items (14) were orders 4305, 3473, 1957, 330, 440, 443, and 2675.<br/>
<br/>

**4. How many orders had more than 12 items?**<br/>
20 orders had more than 12 items.<br/>
<br/>
<br/>
For Objective 3, there were 3 questions with a bonus analysis opportunity at the end. <br/>
<br/>
**1. What were the least and most ordered items? What categories were they in?<br/>**
The least ordered item was the chicken tacos from the Mexican category, and the most ordered item was the hamburgers from the American category. <br/>
<br/>

**2. What were the top 5 orders that spent the most money?<br/>**
The top 5 order IDs were 440, 2075, 1957, 330, and 2675, all totaling above $160.00.<br/>
<br/>

**3. View the details of the highest spend order. Which specific items were purchased?<br/>**
The highest spend order was ID 440. The specific items that were purchased can be seen below, and it seems that the category that was ordered the most was Italian, with 8 dishes.</br>
<br/>

**BONUS: View the details of the top 5 highest spend orders<br/>**
The details of the top 5 highest spend orders can be easily seen in the SQL file, but I have included a few screenshots of the query in this readme.
