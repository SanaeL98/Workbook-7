USE northwind;

-- 1. List the product id, product name, unit price, and category name of all products
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;

-- 2. List the product id, product name, unit price, and supplier name of all products that cost more than $75
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM products p
JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName;

-- 3. List the product id, product name, unit price, category name, and supplier name of every product
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice, 
    c.CategoryName, 
    s.CompanyName AS SupplierName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;


-- 4. What is the product name(s) and categories of the most expensive products?
SELECT 
    p.ProductName, 
    c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (
    SELECT MAX(UnitPrice) FROM products
);

-- 5. List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany
SELECT 
    o.OrderID, 
    o.ShipName, 
    o.ShipAddress, 
    s.CompanyName AS ShipperName
FROM orders o
JOIN shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany';


-- 6. List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"

