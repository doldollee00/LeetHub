# Write your MySQL query statement below
select u.unique_id, s.name
from Employees s LEFT JOIN EmployeeUNI u ON s.id = u.id