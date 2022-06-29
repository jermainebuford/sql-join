/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select p.name as productname, c.name as categoryname from products as p inner join categories as c
 on c.CategoryID = p.CategoryID where c.name = 'computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.name, p.price, r.rating from products as p
 inner join reviews as r on r.ProductID
 where r.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.firstname, e.lastname, sum(s.quantity) as total 
from sales as s
inner join employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by total desc
limit 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as 'department name', c.name as 'category name' from departments as d
inner join catergories as c on c.deparmentid = d.departmentid
where c.name = 'appliances' or c.name = 'games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.name, sum(s.quantity) as 'total sold', sum(s.quantity = s.priceperunit) as 'total price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.productid = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r.reviewer, min(r.rating)| r.comment
from products as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.rating = 1;