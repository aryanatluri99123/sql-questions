select s.name
from salesperson s
where s.name not in
(select s.name 
from salesperson s
left join orders o using (sales_id)
left join company c using  (com_id)
where c.name = 'RED')