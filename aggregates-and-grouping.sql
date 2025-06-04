-- 1. How many suppliers are there? Use a query!
SELECT COUNT(*) AS total_suppliers FROM Suppliers;

-- 2. What is the sum of all the employee's salaries?
-- Note: Northwind doesn't have a Salary column by default, skip if missing
-- SELECT SUM(Salary) FROM Employees;

-- 3. What is the price of the cheapest item that Northwind sells?
SELECT MIN(UnitPrice) AS cheapest_price FROM Products;

-- 4. What is the average price of items that Northwind sells?
SELECT AVG(UnitPrice) AS average_price FROM Products;

-- 5. What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice) AS most_expensive_price FROM Products;

-- 6. What is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(*) AS number_of_items
FROM Products
GROUP BY SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the category?
SELECT CategoryID, AVG(UnitPrice) AS average_price
FROM Products
GROUP BY CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?
SELECT SupplierID, COUNT(*) AS number_of_items
FROM Products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

-- 9. List the product id, product name, and inventory value, sorted by value then name.
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;
