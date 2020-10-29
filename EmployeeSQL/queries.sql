select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary from employees
join salaries 
on employees.emp_no=salaries.emp_no;



select first_name, last_name, hire_date from employees
where extract(year from hire_date) = 1986; 
