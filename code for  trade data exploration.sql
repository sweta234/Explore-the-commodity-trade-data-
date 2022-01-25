# EXPLORATION  OF DATA 
select count(*) from commodity_trade_statistics_data7;

select * from commodity_trade_statistics_data7;

select distinct(category),flow from commodity_trade_statistics_data7;
# Expoloration  one category data
select (year), flow , trade_usd , country_or_area , category  
from commodity_trade_statistics_data7 where category = '01_live_animals' order by country_or_area;

# Expoloration flow of goods and services.
select max(flow) , year, max(country_or_area) , category,
max(trade_usd)  from commodity_trade_statistics_data7;

select flow , max(commodity), max(trade_usd) from commodity_trade_statistics_data7;

# Total Amount of  flow  in country order.
select  country_or_area, flow, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;

# Total Amount of  commodity  in country order
select  country_or_area, commodity, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;

# find out which commodity trade most in country order.
select  country_or_area, max(commodity) as maximum_value_commodity, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;

# Explore the  export and import  amount in country order.
select  country_or_area, flow, trade_usd, year from commodity_trade_statistics_data7 WHERE  flow IN ('Export', 'import')
group by  country_or_area order by  trade_usd desc limit 20;

# Explore trade in category wise. 
select max(category), sum(trade_usd), country_or_area , flow , year from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc;

# Explore the trade amount in country order.
select country_or_area, sum(trade_usd) , (year) from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc limit 10;

# Explore trade amount in quantity_name.
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc;

# Explore  sum of the amount trade of live_animals category
select country_or_area, sum(trade_usd), quantity , category , year from commodity_trade_statistics_data7
where category = '01_live_animals' group by   country_or_area order by  quantity desc limit 10; 

# Explore  sum of the amount trade of live_animals category in flow wise.
select country_or_area, sum(trade_usd), quantity , category , year , flow  from commodity_trade_statistics_data7
where category = '01_live_animals' group by   country_or_area order by  quantity desc limit 10; 

# Explore sum of the trade amount of meat_and_edible_meat_offal category.
select country_or_area, sum(trade_usd), quantity , category , year from commodity_trade_statistics_data7
where category = '02_meat_and_edible_meat_offal' group by   country_or_area order by  quantity desc limit 10;

# Explore sum of the trade amount of meat_and_edible_meat_offal category in flow wise.
select country_or_area, sum(trade_usd), quantity , category , year , flow  from commodity_trade_statistics_data7
where category = '02_meat_and_edible_meat_offal' group by   country_or_area order by  quantity desc limit 10;

# Explore total quantity  in country-wise.
select sum(quantity), country_or_area from commodity_trade_statistics_data7 
group by country_or_area order by  sum(quantity) desc ;

# Explore Re-import and Re-Export of  country.
select  country_or_area, flow, trade_usd, year from commodity_trade_statistics_data7 WHERE  flow IN ('Re-Export', 'Re-import')
group by  country_or_area order by  trade_usd desc limit 20;

# explore Export of category wise commodity.
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
where flow  = 'Export'group by   country_or_area order by  sum(trade_usd)  desc;

# Explore import of category wise commodity.
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
where flow  = 'import 'group by   country_or_area order by  sum(trade_usd)  desc;

# explore which commodity trade most.
select country_or_area , max(commodity), max(flow) , (trade_usd)  from commodity_trade_statistics_data7 
group by country_or_area order by (trade_usd) desc ;

# explore which commodity trade and export.
select country_or_area , flow , max(commodity) from commodity_trade_statistics_data7 
where flow = 'Export' group by country_or_area;


select country_or_area, (weight_kg) , commodity from commodity_trade_statistics_data7 
group by country_or_area order by (weight_kg) desc;

select max(country_or_area), max(trade_usd) from commodity_trade_statistics_data7;



