use ymir_employees;

select distinct title from titles;

select count(*)
from employees
where (last_name like 'E%')
and (last_name like '%e')
group by first_name, last_name;

select concat( count(*), ' ', last_name)
from employees
where (last_name like '%q%')
and (not last_name like '%qu%')
group by last_name;

select concat(count(*), ' ', gender)
from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
group by gender;