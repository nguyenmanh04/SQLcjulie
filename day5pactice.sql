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

--baitap7 
SELECT card_name,
(max(issued_amount)-min(issued_amount)) as difference
from monthly_cards_issued
group by card_name
order by card_name desc

--baitap8
SELECT manufacturer ,
count(drug)as drug_count,
abs(sum(cogs-total_sales)) as total_loss
from pharmacy_sales
where cogs > total_sales
group by manufacturer

--baitap9
select * from cinema
where id%2=1 and description not like '%boring%'
order by rating desc

--baitap10
select teacher_id ,
count(distinct(subject_id)) as cnt
from teacher 
group by teacher_id

--baitap11
select user_id,
count(follower_id) as followers_count 
 from followers
 group by user_id

--baitap12
select class from courses
group by class
having count(student) >=5

