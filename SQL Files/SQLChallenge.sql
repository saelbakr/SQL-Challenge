----#1 First Exercise: Grabbing Last Names, First Names, Gender, Emp_no, and Salary
SELECT "Salaries".emp_no,last_name, first_name, salary, gender
FROM "Salaries" JOIN "Employees"
ON "Salaries".emp_no= "Employees".emp_no

---#2 List employees who were hired in 1986.
Select first_name,Last_name, hire_date from "Employees"
	where hire_date LIKE'1986%';

--#4 List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT "Employees".emp_no,last_name, first_name,dept_name
FROM "Dept_Manager"
LEFT JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no
LEFT JOIN "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no	
	
---#3 List the manager of each department with the following information: department number, department name, 
---the manager's employee number, last name, first name, and start and end employment dates.
	
SELECT "Employees".emp_no,"Departments".dept_no,dept_name,last_name, first_name,from_date,to_date
FROM "Dept_Manager"
LEFT JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no
LEFT JOIN "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no


--#5 List all employees whose first name is "Hercules" and last names begin with "B."
Select first_name,Last_name from "Employees"
	where first_name ='Hercules' AND last_name LIKE 'B%';

--#6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT "Employees".emp_no,dept_name,last_name, first_name
FROM "Dept_Manager"
LEFT JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no
LEFT JOIN "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no
WHERE dept_name = 'Sales';

--#7 List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT "Employees".emp_no,dept_name,last_name, first_name
FROM "Dept_Manager"
LEFT JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no
LEFT JOIN "Departments" ON "Departments".dept_no = "Dept_Manager".dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

---#8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) as "Last Name Count" 
FROM "Employees" 
GROUP BY last_name;