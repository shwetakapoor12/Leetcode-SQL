# Write your MySQL query statement below
select name, IFNULL(sum(distance),0) as travelled_distance from Rides 
Right join Users on Users.id = Rides.user_id
group by user_id
order by travelled_distance DESC,name ASC