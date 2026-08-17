# Day 3: SQL Coding Challenge – Clauses & Operators 🛒
 
**Database:** `ECommerceDB`
 
This repository contains SQL practice queries covering core clauses and operators — `DISTINCT`, `WHERE`, comparison/arithmetic/logical operators, `NULL` checks, `IN`/`NOT IN`, `BETWEEN`, and `LIKE`.
 
## 📁 Schema Assumptions
 
**Product**
 
| Column        | Type          |
|---------------|---------------|
| product_id    | INT (PK)      |
| product_name  | VARCHAR       |
| price         | DECIMAL       |
 
**Sales**
 
| Column        | Type          |
|---------------|---------------|
| sale_id       | INT (PK)      |
| product_id    | INT (FK)      |
| quantity      | INT           |
| sale_amount   | DECIMAL       |
 
> Adjust column/table names above to match your actual database before running these queries.
 
---
 
## 🔹 DISTINCT & AS
 
**1. Display unique product names from the Product table.**
```sql
SELECT DISTINCT product_name
FROM Product;
```
 
**2. Display product names with alias Product_Name.**
```sql
SELECT product_name AS Product_Name
FROM Product;
```
 
**3. Display unique product_id values from the Sales table.**
```sql
SELECT DISTINCT product_id
FROM Sales;
```
 
**4. Display product price with alias Product_Price.**
```sql
SELECT price AS Product_Price
FROM Product;
```
 
---
 
## 🔹 WHERE Clause
 
**5. Display products whose price is greater than 10,000.**
```sql
SELECT *
FROM Product
WHERE price > 10000;
```
 
**6. Show products whose price is less than 5,000.**
```sql
SELECT *
FROM Product
WHERE price < 5000;
```
 
**7. Display sales where quantity equals 2.**
```sql
SELECT *
FROM Sales
WHERE quantity = 2;
```
 
---
 
## 🔹 Comparison Operators
 
**8. Display products whose price is greater than or equal to 15,000.**
```sql
SELECT *
FROM Product
WHERE price >= 15000;
```
 
**9. Display sales where quantity is not equal to 5.**
```sql
SELECT *
FROM Sales
WHERE quantity <> 5;
```
 
---
 
## 🔹 Arithmetic Operators
 
**10. Display product name and price after 10% increase.**
```sql
SELECT product_name,
       price * 1.10 AS Price_After_Increase
FROM Product;
```
 
**11. Display sale amount and sale amount after adding 500.**
```sql
SELECT sale_amount,
       sale_amount + 500 AS Sale_Amount_Plus_500
FROM Sales;
```
 
---
 
## 🔹 Logical Operators
 
**12. Display products whose price is greater than 5,000 AND less than 50,000.**
```sql
SELECT *
FROM Product
WHERE price > 5000 AND price < 50000;
```
 
**13. Display sales where quantity is 2 OR 4.**
```sql
SELECT *
FROM Sales
WHERE quantity = 2 OR quantity = 4;
```
 
**14. Display products whose price is NOT greater than 20,000.**
```sql
SELECT *
FROM Product
WHERE NOT price > 20000;
```
 
---
 
## 🔹 IS NULL / IS NOT NULL
 
**15. Display sales records where product_id is NULL.**
```sql
SELECT *
FROM Sales
WHERE product_id IS NULL;
```
 
**16. Display products where price is NOT NULL.**
```sql
SELECT *
FROM Product
WHERE price IS NOT NULL;
```
 
---
 
## 🔹 IN and NOT IN
 
**17. Display products with product_id 1, 3, and 5.**
```sql
SELECT *
FROM Product
WHERE product_id IN (1, 3, 5);
```
 
**18. Display products whose product_id is NOT 2, 4, and 6.**
```sql
SELECT *
FROM Product
WHERE product_id NOT IN (2, 4, 6);
```
 
---
 
## 🔹 BETWEEN and NOT BETWEEN
 
**19. Display products whose price is between 1,000 and 20,000.**
```sql
SELECT *
FROM Product
WHERE price BETWEEN 1000 AND 20000;
```
 
**20. Display products whose price is NOT between 5,000 and 50,000.**
```sql
SELECT *
FROM Product
WHERE price NOT BETWEEN 5000 AND 50000;
```
 
---
 
## 🔹 LIKE and NOT LIKE
 
**21. Display products whose name starts with 'M'.**
```sql
SELECT *
FROM Product
WHERE product_name LIKE 'M%';
```
 
**22. Display products whose name ends with 'e'.**
```sql
SELECT *
FROM Product
WHERE product_name LIKE '%e';
```
 
**23. Display products whose name contains 'phone'.**
```sql
SELECT *
FROM Product
WHERE product_name LIKE '%phone%';
```
 
**24. Display products whose name does not start with 'S'.**
```sql
SELECT *
FROM Product
WHERE product_name NOT LIKE 'S%';
```
 
---
 
## 🔹 Mixed Questions (Exam Level)
 
**25. Display products whose price is between 1,000 and 20,000 AND product name starts with 'M'.**
```sql
SELECT *
FROM Product
WHERE price BETWEEN 1000 AND 20000
  AND product_name LIKE 'M%';
```
 
**26. Display sales where quantity is between 2 and 10.**
```sql
SELECT *
FROM Sales
WHERE quantity BETWEEN 2 AND 10;
```
 
**27. Display products whose product_id is in (1,2,3) AND price greater than 5,000.**
```sql
SELECT *
FROM Product
WHERE product_id IN (1, 2, 3)
  AND price > 5000;
```
 
**28. Display unique sale quantities from the Sales table.**
```sql
SELECT DISTINCT quantity
FROM Sales;
```
 
---
 
## ✅ Topics Covered
 
- `DISTINCT` & `AS` (aliasing)
- `WHERE` clause filtering
- Comparison operators (`>`, `<`, `>=`, `<>`)
- Arithmetic operators in `SELECT`
- Logical operators (`AND`, `OR`, `NOT`)
- `IS NULL` / `IS NOT NULL`
- `IN` / `NOT IN`
- `BETWEEN` / `NOT BETWEEN`
- `LIKE` / `NOT LIKE` (wildcard pattern matching)
- Combined/mixed condition queries
---
 
*Part of a daily SQL practice series — Day 3 of the SQL Coding Challenge.*
 
