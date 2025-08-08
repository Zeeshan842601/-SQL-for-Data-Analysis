CREATE TABLE sales_data (
    OrderID INT,
    CustomerName TEXT,
    Product TEXT,
    Category TEXT,
    Quantity INT,
    Price NUMERIC(10,2),
    OrderDate DATE,
    Region TEXT
);

select * from sales_data
order by price desc;


SELECT region, SUM(price) AS total_sales
FROM sales_data
GROUP BY region;

select * from sales_data;

create table customer(customername varchar (250));

select * from customer;

insert into customer(customername)
values
('John Smith'),
('Robert Wilson'),
('Michael Garcia'),
('Zeeshan Ansari');

select * from customer;

select * from sales_data;

update sales_data
set customername = 'Zeeshan Ansari'
where orderid= 1001;

SELECT *
FROM sales_data
ORDER BY 
    CASE 
        WHEN customername = 'Zeeshan Ansari' THEN 0
        ELSE 1
    END,
    orderid;
update sales_data
set orderid=1001
where customername='Zeeshan Ansari';

select * from sales_data;

select * from sales_data
order by orderid;

UPDATE sales_data
SET price = CASE orderid
    WHEN 1002 THEN 600.00
    WHEN 1003 THEN 150.00
    WHEN 1004 THEN 300.00
    WHEN 1005 THEN 120.00
    WHEN 1006 THEN 200.00
    WHEN 1007 THEN 100.00
    WHEN 1008 THEN 340.00
	WHEN 1009 THEN 200.00
	WHEN 1010 THEN 50.00
	WHEN 1001 THEN 500.00
END;


select * from sales_data
order by orderid asc;

select customername,product,region
from sales_data
order by orderid asc;

select * from customer;

select * from sales_data as s
inner join customer as c 
on s.customername= c.customername;

select * from sales_data as s
right join customer as c 
on s.customername=c.customername;

select round(avg(price),2)
from sales_data;


SELECT customername, price
FROM sales_data
WHERE price > (
    SELECT AVG(price) FROM sales_data
);


select * from sales_data;

CREATE VIEW region_sales AS
SELECT region, SUM(price) AS total_sales
FROM sales_data
GROUP BY region;

SELECT * FROM region_sales;


SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'region_sales';


CREATE INDEX idx_region ON sales_data(region);


SELECT * FROM sales_data WHERE region = 'West';

