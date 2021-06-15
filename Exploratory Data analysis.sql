
-- Exploratory Data Analysis

select 
	city,
	count(city) as [count]
from 
	supermarket_sales
group by
	city
order by 
	2 desc


select 
	[Customer type],
	count([Customer type]) as [count]
from 
	[supermarket_sales]
group by 
	[Customer type]
order by 
	2 desc

select
	[Date],
	count([Date]) as [count]
from
	[supermarket_sales]
group by 
	[Date]



select
	gender,
	count(gender) as count
from
	[supermarket_sales]
group by 
	gender
order by 
	2 desc


select 
	payment as mode,
	count(payment) as count
from 
	supermarket_sales
group by 
	payment
order by 
	2 desc


select
	[Product line],
	count([Product line]) as count,
	round(avg([Unit price]),2) as [Avg price],
	round(sum([Total]),2) as Total,
	round(sum([Tax 5%]),2) as Tax
from 
	supermarket_sales
group by 
	[product line]
order by 
	1

select 
	*
from 
	supermarket_sales
where
	branch = 'C'
order by
	Rating desc