# Write your MySQL query statement below
select st.student_id,
       st.student_name,
       su.subject_name,
       count(ex.student_id) as attended_exams
from Students st CROSS JOIN Subjects su LEFT JOIN Examinations ex ON st.student_id = ex.student_id AND su.subject_name = ex.subject_name
group by st.student_id, st.student_name, su.subject_name
order by st.student_id, st.student_name, su.subject_name