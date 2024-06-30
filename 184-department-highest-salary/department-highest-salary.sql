select d.name as Department, e.name as Employee, Salary
from employee e
join department d on e.departmentId = d.id
where (e.departmentId,e.salary) in (
    select departmentId , max(salary) from employee
    group by departmentId)
