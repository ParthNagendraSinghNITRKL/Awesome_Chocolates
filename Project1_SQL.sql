--CREATING TABLES & IMPORTING DATA
create table sales(Sales_Person varchar,Geography text,Product text,date date,Amount bigint,Customers bigint,Boxes bigint);
alter table sales alter column Amount type varchar;
select * from sales;


create table category(Product varchar,Category text, Size text);
select * from category;


create table geo(Geo text,Region text);
select * from geo;


create table person(Sales_Person text,Team text,Picture varchar);
select * from person;


--TRIMMING 'sales' TABLE
UPDATE sales SET geography = TRIM(sales.geography);


--FILTRATION
select product, date, amount, customers from sales where geography='India' and date between '2021-06-01' and '2021-08-30';

select geography,PRODUCT, avg(boxes) as Avg_Boxes from sales group by geography,PRODUCT order by Avg_Boxes desc;


--JOINING TABLES
select * from category;
Select * from geo;
select * from person;
select * from sales;

select a.product,
a.amount,
a.customers,
a.boxes,
b.category,
b.size from sales as a left join category as b on a.product=b.product order by amount limit 200;


select c.sales_person,
c.amount,
d.team,
d.picture from sales as c inner join person as d on c.sales_person=d.sales_person order by amount;