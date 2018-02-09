select  first_name, last_name,employees.emp_no,departments.dept_no, salaries.salary
from (employees inner join salaries
on employees.emp_no=salaries.emp_no) inner join current_dept_emp
on (current_dept_emp.emp_no=employees.emp_no) inner join departments
on (current_dept_emp.dept_no=departments.dept_no)
where salary <= 100000
group by employees.emp_no
order by salary desc;

