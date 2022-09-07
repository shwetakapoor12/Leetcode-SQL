select employee_id, 
CASE 
when 
employee_id %2 =1 AND left(name,1) != 'M' THEN salary
else 
salary= '0'
end as bonus
from Employees
order by employee_id