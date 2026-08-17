select * from product;
select * from sales;

--- DISTINCT & As
-- Display unique product names from the Product table.

select distinct product_name from product;

-- Display product names with alias Product_Name
select distinct product_name as List_of_product
from product;

-- Display unique product_id values from the Sales table.
select distinct product_id from sales;

-- Display product price with alias Product_Price.
select product_id as list_of_product from sales;

-- WHERE Clause
-- Display products whose price is greater than 10,000.

select product_id, sale_amount from sales
where sale_amount >10000;

-- Show products whose price is less than 5,000.
select product_id, sale_amount from sales
where sale_amount <5000;

-- Display sales where quantity equals 2.
select product_id, quantity from sales
where quantity = 2;

-- Comparison Operators
-- Display products whose price is greater than or equal to 15,000.

select product_name, price from product
where price >= 15000;

-- Display sales where quantity is not equal to 5.

select sale_id, quantity from sales
where quantity !=5;

--- Arithmetic Operators
-- Display product name and price after 10% increase.

select product_name, price, price * 1.10 as price_10percentage_increase
from product;

-- Display sale amount and sale amount after adding 500.
select sale_id, sale_amount, sale_amount + 500 as After_adding_500
from sales;

--- Logical Operators
-- Display products whose price is greater than 5,000 AND less than 50,000.

select product_name, price from product
where price >5000 and price <50000;

-- Display sales where quantity is 2 OR 4.
select sale_id, quantity from sales
where quantity =2 or quantity =4;

-- Display products whose price is NOT greater than 20,000.
select product_name, price from product
where not price > 20000;

--- IS NULL / IS NOT NULL
-- Display sales records where product_id is NULL

select product_id from sales
where  product_id is null;

-- Display products where price is NOT NULL.
select product_name, price from product
where price is not null;

--- IN and NOT/IN
-- Display products with product_id 1, 3, and 5.

select product_name, product_id from product
where product_id in (1,3,5);

-- Display products whose product_id is NOT 2, 4, and 6.

select product_name, product_id from product
where product_id not in (2,4,6); 


--- BETWEEN and NOT BETWEEN
-- Display products whose price is between 1,000 and 20,000.

select product_name, price from product
where price between 1000 and 20000;

-- Display products whose price is NOT between 5,000 and 50,000.

select product_name, price from product
where price not between 5000 and 50000;

--- LIKE and NOT LIKE
-- Display products whose name starts with 'M'.

select product_name from product
where product_name like 'M%';

-- Display products whose name ends with 'e'.
select product_name from product
where product_name like '%e';

-- Display products whose name contains 'phone'.
select product_name from product
where product_name like '%phone%';

-- Display products whose name does not start with 'S'.
select product_name from product
where product_name not like 's%';

--- Mixed Questions (Exam Level)
-- Display products whose price is between 1,000 and 20,000 AND product name starts with 'M'.
select product_name, price from product
where product_name like 'M%' and price between 1000 and 20000;

-- Display sales where quantity is between 2 and 10.
select sale_id, product_id, quantity from sales
where quantity between 2 and 10;

-- Display products whose product_id is in (1,2,3) AND price greater than 5,000.
select product_id,product_name, price from product
where product_id in (1,2,3) and price >5000;
 
 -- Display unique sale quantities from the Sales table.
 
 select distinct quantity from sales;
 
 
 