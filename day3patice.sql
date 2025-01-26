--baitap1 
select NAME from city 
Where COUNTRYCODE LIKE 'USA' AND POPULATION > 120000

--baitap2
select * from CITY
where countrycode like 'JPN'

--baitap3
Select CITY , STATE from STATION

--baitap4
Select distinct city from station
where city like 'a%' or city like 'e%' or city like 'i%' or city like 'u%' or city like 'o%'

--baitap5
Select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%u' or city like '%o'

--baitap6
Select distinct city from station
where city not like 'a%' and city not like 'e%' and city not like 'i%' and city not like 'u%' and city not like 'o%'

--baitap7
select name from Employee
order by name asc

--baitap8
select name from employee
where salary > 2000 and months <10
order by employee_id asc

--baitap9
select product_id from products
where low_fats like 'Y' and recyclable like 'Y'

--baitap10
select name from customer
where referee_id not like 2 or referee_id is Null

--baitap11
select name,population, area from world
where area >= 3000000 or population >= 25000000

--baitap12
select distinct author_id as id from views
where viewer_id = author_id
order by author_id asc

--baitap13
select part ,assembly_step from parts_assembly 
where finish_date is null

--baitap14
select * from lyft_drivers 
where yearly_salary not between 30000 and 70000

--baitap15
select advertising_channel from uber_advertising
where money_spent >100000 and year = 2019
