/* Little Lemon asked you to create a procedure called GetMaxQuantity() that displays the maximum ordered quantity in the orders table.

*/

CREATE PROCEDURE GetMaxQuantity()  
SELECT MAX(Quantity) AS "Max Quantity in Order"
FROM Orders;

CALL GetMaxQuantity();