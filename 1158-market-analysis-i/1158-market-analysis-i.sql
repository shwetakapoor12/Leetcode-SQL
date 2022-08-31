# Write your MySQL query statement below






select Users.user_id as buyer_id, Users.join_date,count(Orders.order_id) as orders_in_2019 from Users
left join Orders on Users.user_id = Orders.buyer_id 
AND year(order_date) = '2019'
group by Users.user_id