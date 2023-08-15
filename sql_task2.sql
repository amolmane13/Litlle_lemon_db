/* Little Lemon needed information from four tables on all customers with orders that cost more than $150. Your task was to extract the required information from each of the following tables by using the relevant JOIN clause: 

Customers table: The customer id and full name.

Orders table: The order id and cost.

Menus table: The menus name.

MenusItems table: Course name and starter name.

*/

SELECT
	c.CustomerID,
    c.FullName,
    o.OrderID,
    o.TotalCost,
    m.Cuisine,
    mi.CourseName
FROM Orders o
INNER JOIN Customers c
  ON o.CustomerID = c.CustomerID
INNER JOIN Menus m
  ON o.MenuID = m.MenuID
INNER JOIN MenuItems mi
  ON m.MenuItemsID = mi.MenuItemsID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost;