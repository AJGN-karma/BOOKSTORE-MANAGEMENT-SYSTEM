# Total Sales by Publisher
SELECT p.Name AS PublisherName, SUM(b.Price) AS TotalSales
FROM Publisher p
JOIN Book1 b ON p.PublisherID = b.PublisherID
GROUP BY p.PublisherID, p.Name;

# Distinct Customers With Orders
SELECT DISTINCT c.CustomerID, c.Name, c.Email
FROM Customer c
JOIN Order2 o ON c.CustomerID = o.CustomerID;

# Books Published After 2023
SELECT BookID, Title, PublicationDate
FROM Book1
WHERE PublicationDate > TO_DATE('2023-01-01', 'YYYY-MM-DD');

# Top 5 Customers by Total Spending
SELECT c.CustomerID, c.Name, c.Email, SUM(o.TotalAmount) AS TotalSpent
FROM Customer c
JOIN Order2 o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name, c.Email
ORDER BY TotalSpent DESC
FETCH FIRST 5 ROWS ONLY;

# Average Book Price per Publisher
SELECT p.Name AS PublisherName, AVG(b.Price) AS AveragePrice
FROM Publisher p
JOIN Book1 b ON p.PublisherID = b.PublisherID
GROUP BY p.PublisherID, p.Name;
