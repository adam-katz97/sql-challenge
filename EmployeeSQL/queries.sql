select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees
join salaries 
on employees.emp_no=salaries.emp_no;

select first_name, last_name, hire_date from employees
where extract(year from hire_date) = 1986; 

select dept_manager.dept_no, departments.dept_name, 
dept_manager.emp_no, employees.first_name, employees.last_name 
from dept_manager
join dept_emp
on (dept_manager.emp_no = dept_emp.emp_no) and (dept_manager.dept_no = dept_emp.dept_no)
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

select dept_emp.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no,
departments.dept_name from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no 
join departments 
on departments.dept_no = dept_emp.dept_no;

select first_name, last_name, sex from employees 
where (first_name = 'Hercules' ) and (last_name like 'B%');

select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no 
join departments 
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no 
join departments 
on departments.dept_no = dept_emp.dept_no
where (departments.dept_name = 'Sales') or (departments.dept_name ='Development');