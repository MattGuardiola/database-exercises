use ymir_employees;

select concat(e.emp_no, ' - ', e.last_name, ', ', e.first_name) as full_name,
e.birth_date as DOB
from employees as e
limit 10;