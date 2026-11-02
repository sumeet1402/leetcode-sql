SELECT employee_id, department_id
FROM (
    SELECT *, COUNT(employee_id) OVER(PARTITION BY employee_id) as cnt
    FROM Employee
) AS temp_table
WHERE primary_flag = 'Y' OR cnt = 1;