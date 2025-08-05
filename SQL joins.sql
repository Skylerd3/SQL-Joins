-- joins: select all the computers from the products table:
-- using the products table and the categories table, return the product name and the category name */

select p.name as ProductName, c.name as CategoryName
from products as p
inner join categories as c
on c.categoryID = p.categoryID
where c.name = 'Computers';

-- joins: find all product names, product prices, and products ratings that have a rating of 5 */

select p.Name, p.Price, r.Rating from products as p
inner join reviews as r on r.productID = p.ProductID
where rating = 5;
 
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by */

select e.FirstName, e.LastName, Sum(s.Quantity) as Total
from sales as s
inner join Employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by total desc
limit 2;

-- joins: find the name of the department, and the name of the category for Appliances and Games */

select d.Name as 'Department Name', c.Name as 'Categorie Name' from departments as d
inner join Categories as c on c.departmentID = d.departmentID
where c.name = 'Appliances' or c.name = 'Games';


-- joins: find the product name, total # sold, and total price sold,
 -- for Eagles: Hotel California --You may need to use SUM() */
 
select p.name, sum(s.quantity) as 'Total Sold', sum(s.quantity * s.PricePerUnit) as 'Total Price Sold' 
from products as p
inner join sales as s on s.ProductID = p.productID where p.productID = 97;


-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. 
-- (only return for the lowest rating!) */

select p.Name, r.Reviewer, r.Rating, r.Comment
from products as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;