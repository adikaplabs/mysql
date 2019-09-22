-- 1. Write a query in SQL to display all the information of the employees

SELECT *
FROM emp;

-- 2. Write a query in SQL to find the salaries of all employees
SELECT ename "Name", sal "Salary"
FROM emp;

-- 3. Write a query in SQL to display the unique designations for the
-- employees.

SELECT DISTINCT job
FROM emp;

-- 4. Write a query in SQL to list the emp_name and salary is increased by 15%
-- and expressed as no.of Dollars.
SELECT ename, sal*1.15 "Salary (Dollars)"
FROM emp;

-- 5. Write a query in SQL to produce the output of employees name and job
-- name as a fromat of "Employee & Job".
SELECT CONCAT(ename, " works as " , job) "Employee & Job"
FROM emp; 

-- 6. Write a query in SQL to produce the output of employees as follows:
-- Employee
-- JONAS(manager).

SELECT CONCAT(ename,"(", job,")") "Employee(Job)"
FROM emp;

-- 7. Write a query in SQL to list the employees with Hire date in the format like
-- February 22, 1991.

SELECT ename, date_format(hiredate, '%M %d, %Y') "Hire Date"
FROM emp;


-- 8. Write a query in SQL to count the no. of characters without considering the
-- spaces for each name.

SELECT ename, length(replace(ename, " " ,'')) "Number of letters"
FROM emp
GROUP BY ename;

-- 9. Write a query in SQL to list the emp_id,salary, and commission of all the
-- employees.

SELECT empno, sal, comm 
FROM emp;

-- 10. Write a query in SQL to display the unique department with jobs.

SELECT DISTINCT deptno, job 
FROM emp;

-- 11. Write a query in SQL to list the employees who does not belong to
-- department 2001.

SELECT ename
FROM emp
WHERE deptno != 20;

-- 12. Write a query in SQL to list the employees who joined before 1981.

SELECT ename, year(hiredate) "Year of joining"
FROM emp
WHERE year(hiredate) <= 1981;

-- 13. Write a query in SQL to display the average salaries of all the employees
-- who works as ANALYST.

SELECT floor(avg(sal)) "Average salary of Analysts"
FROM emp
WHERE job = 'ANALYST';

-- 14. Write a query in SQL to display the details of the employee KING.

SELECT * 
FROM emp
WHERE ename = 'KING';

-- 15. Write a query in SQL to display all the details of the employees whose
-- commission is more than their salary.

SELECT *
FROM emp
WHERE sal < comm;

-- 16. Write a query in SQL to list the employees whose salary is more than
-- 3000 after giving 25% increment.
-- 17. Write a query in SQL to list the name of the employees, those having six
-- characters to their name.
-- 18. Write a query in SQL to list the employees who joined in the month
-- January.
-- 19. Write a query in SQL to list the name of employees and their manager
-- separated by the string 'works for'.
-- 20. Write a query in SQL to list all the employees whose designation is
-- CLERK.
-- 21. Write a query in SQL to list the employees whose experience is more than
-- 10 years. 
-- 22. Write a query in SQL to list the employees whose salaries are less than
-- 3500.
-- 23. Write a query in SQL to list the name, job_name, and salary of any
-- employee whose designation is ANALYST.
-- 24. Write a query in SQL to list the employees who have joined in the year
-- 1991.
-- 25. Write a query in SQL to list the name, id, hire_date, and salary of all the
-- employees joined before 1 apr 91. 