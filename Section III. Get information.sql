Write a query to get the department name (Departments.DEPARTMENT_NAME) and number of employees (COUNT) in each department.
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, COUNT(*) AS "N. of Employees"
    FROM Employees E
    INNER JOIN Departments D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
    GROUP BY DEPARTMENT_ID;


Write a query to find the employee ID (Employees.EMPLOYEE_ID), job title (Jobs.JOB_TITLE), number of days between ending date and starting date (JobsHistory.END_DATE - JobsHistory.START_DATE) for all jobs in department 90 (DEPARTMENT_ID) from job history (JobsHistory).
SELECT E.EMPLOYEE_ID, J.JOB_TITLE, DATEDIFF(JH.END_DATE, JH.START_DATE)
    FROM JobHistory JH
    INNER JOIN Jobs J
    ON J.JOB_ID = JH.JOB_ID
    INNER JOIN Employees E
    ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    WHERE JH.DEPARTMENT_ID = 90;


Write a query to display the department name (Departments.DEPARTMENT_NAME), manager name (Employees.FIRST_NAME), and city (Locations.CITY).
SELECT D.DEPARTMENT_NAME, E.FIRST_NAME, Locations.CITY FROM Departments D
    JOIN Employees E ON (D.MANAGER_ID = E.EMPLOYEE_ID)
    JOIN Locations USING (LOCATION_ID);


Write a query to display the job title (Jobs.JOBS_TITLE) and average salary (Employees.SALARY) of employees.
SELECT J.JOB_TITLE, AVG(SALARY) AS "Avg. Salary of Employees"
    FROM Employees E
    INNER JOIN Jobs J
    ON E.JOB_ID = J.JOB_ID GROUP BY JOB_TITLE;


EXTRA BONUS Write a query to display the job history (JobsHistory) that were done by any employee (Employees) who is currently earning more than 10000 of salary (Employees.SALARY).
SELECT * FROM JobHistory J 
    INNER JOIN Employees E
    ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
    WHERE E.SALARY > 10000;