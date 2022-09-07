




with CTE as (

select user_id, time_stamp  as last_stamp  ,  dense_rank() over(partition by user_id order by time_stamp  Desc) my_rank from Logins where year(time_stamp) = '2020')
select user_id,last_stamp from CTE where my_rank =1