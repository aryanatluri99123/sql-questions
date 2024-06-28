select e1.name as Employee
from employee e
join employee e1 on e.id = e1.managerID
where e.salary < e1.salary