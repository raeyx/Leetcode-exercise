select distinct s.student_id, s.student_name
from exam e 
join student s
on e.student_id = s.student_id
where e.student_id not in (
    select distinct student_id 
    from Exam
    where (exam_id, score) in (
        select exam_id, min(score)
        from Exam
        group by exam_id
    ) or (exam_id, score) in (
        select exam_id, max(score)
        from Exam
        group by exam_id
    )
)

order by s.student_id