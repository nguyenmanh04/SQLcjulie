--baitap1
select distinct city from station
where id%2=0

--baitap2
select count(city)- count(distinct city) from station

--baitap3
select ceil(avg(salary)-avg(replace(salary,0,''))) from employees

--baitap4
SELECT 
round(cast(sum(item_count * order_occurrences)/sum(order_occurrences) as decimal ),1) as mean
FROM items_per_order;

--baitap5
SELECT candidate_id from candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3

--baitap6
SELECT  user_id, 
date(max(post_date))-date(min(post_date))
from posts
where post_date>='2021-01-01' and post_date <='2022-01-01'
group by user_id
having count(post_id)>2
