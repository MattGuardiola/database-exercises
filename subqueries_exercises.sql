# USE ymir_employees;
#
# select e2.hire_date
# from employees
# where e.hire_date in (
#     select e2.hire_date
#     from employees e2
#     where e2.emp_no = '101010'
#     );
#
# select distinct t.*
# from titles t where e.emp_no in (
#     select e2.emp_no
#     from employees e2
#     where e2.first_name = 'Aamond'
#     );


select dm2.emp_no
from dept_manager dm2
where dm2.to_date = '999-01-01'