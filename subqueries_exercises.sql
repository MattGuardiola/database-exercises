use ymir_employees;

select * from employees e
where e.hire_date in (select emps.hire_date
                      from employees emps
                      where emps.emp_no = 101010);

select title
from titles t
where emp_no
in (select emp_no from employees where first_name = 'Aamod');

select distinct title
from titles t
where emp_no
in (select emp_no from employees where first_name = 'Aamod');

select first_name, last_name
from employees e
where e.emp_no
in (select dm.emp_no from dept_manager dm where dm.to_date = '9999-01-01' and e.gender = 'F');
