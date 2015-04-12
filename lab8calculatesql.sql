--query to calculate how many of a given SKU we have--

--testing--
Select quantity
from clothestosell
where sku = 12345

select quantity
from orders
where sku = 12345

--more testing--
select Sum(orders.quantity, clothestosell.quantity)
from clothestosell, orders
where clothestosell.sku = 12345 and orders.sku = 12345



--woo got it!!! (i hope? well it works well)--

select (select sum(orders.quantity) 
        from orders where sku = 12345) 
	+ 
        (select sum(clothestosell.quantity) 
        from clothestosell where sku = 12345) 

        as result





        