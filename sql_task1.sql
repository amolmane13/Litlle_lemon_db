/*Little Lemon asked you to create a virtual table called OrdersView that focuses on OrderID, Quantity and Cost with orders quantity of more than 2.

*/

CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE Quantity > 2;