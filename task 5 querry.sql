	---multiple join

select product_id, customer_id,sales from sales

select product_id,product_name from product

	select * from customer

select s.product_id, s.customer_id,s.sales ,p.product_name from sales as s
inner join product as p
on s.product_id = p.product_id	
inner join customer as c
on c.customer_id = s.customer_id


----left join

select customer_id, sales from sales
select customer_name,customer_id  from customer

select s.customer_id,s.sales , c.customer_name from sales as s
left join customer as c
on s.customer_id = c.customer_id



----right join

select sales, product_id from sales

select product_id, category from product

select s.sales, s.product_id , p.category from sales as s
right join product as p
on p.product_id = s. product_id


---full join

select order_id , customer_id from sales
select customer_name, city from customer
select s.order_id ,s.customer_id, c.customer_name, c.city from sales as s
full join customer as c
on s.customer_id = c.customer_id


