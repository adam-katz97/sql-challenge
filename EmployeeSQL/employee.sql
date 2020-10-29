create table departments(
	dept_no varchar not Null Primary Key, 
	dept_name varchar not NULL
);
create table salaries(
emp_no INT not null primary key,
	salary INT not null
);


create table dept_emp(
	emp_no Integer not Null,
	Foreign Key (emp_no) References salaries(emp_no),
	dept_no varchar not Null, 
	Foreign Key (dept_no) References departments(dept_no)
	
);
create table titles(
title_id varchar not null primary key,
	title varchar not null
);

create table dept_manager(
dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	emp_no int not null,
	foreign key (emp_no) references salaries(emp_no)
);
