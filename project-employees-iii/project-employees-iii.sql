SELECT p.project_id, p.employee_id
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
WHERE (project_id, experience_years) IN (SELECT project_id, MAX(experience_years)
FROM Project
LEFT JOIN Employee
ON Project.employee_id = Employee.employee_id
GROUP BY project_id)
