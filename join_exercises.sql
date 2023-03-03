use ymir_employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND dm.emp_no = e.emp_no;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND dm.emp_no = e.emp_no AND e.gender = 'F';


SELECT t.title, count(e.emp_no) as Total
FROM titles as t
inner join employees e on t.emp_no = e.emp_no
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where t.to_date = '9999-01-01'
and de.to_date = '9999-01-01'
and d.dept_name = 'Customer Service'
group by t.title
order by Total desc;


SELECT d.dept_name as `Department`, concat(e.first_name, '', e.last_name) as `Department Manager`,s.salary as `Salary`
from salaries s
inner join employees e on s.emp_no = e.emp_no
inner join dept_manager dm on e.emp_no = dm.emp_no
inner join departments d on dm.dept_no = d.dept_no
where s.to_date = '9999-01-01'
and dm.to_date = '9999-01-01'