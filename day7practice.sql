--baitap1
select name from students
where marks >75
order by right(name,3), id

--baitap2
select user_id ,
concat(upper(left(name,1)), lower(right(name,length(name)-1))) as name from users

--baitap3
select manufacturer ,
'$' || round(sum(total_sales)/1000000,0) || ' million' as sale
from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc , manufacturer

--baitap4
SELECT extract(MONTH from submit_date) ,
product_id,
round(avg(stars),2) as avg_stars
FROM reviews
group by extract(month from submit_date) , product_id
order by extract(month from submit_date) ,product_id

--baitap5
SELECT sender_id ,
count(receiver_id) as message_count
FROM messages
where sent_date between '08-01-2022' and '09-01-2022'
group by sender_id
order by count(receiver_id) DESC
limit 2

--baitap6
select tweet_id from tweets
where length(content)>15

--baitap7
select activity_date as day ,
count(distinct user_id) as active_users
 from activity
where activity_date between '2019-06-27'and'2019-07-27'
group by activity_date

--baitap8
select count(id)
from employees
where extract(month  from joining_date) between 1 and 7
and extract (year from joining_date) = 2022

--baitap9
select position('a' in first_name) from worker
where first_name ='Amitah'

--baitap10
select substring(title,length(winery)+2,4) from winemag_p2
where country='Macedonia'
