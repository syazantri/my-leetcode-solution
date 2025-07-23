SELECT stud.student_id, stud.student_name, subj.subject_name, 
COUNT(exam.student_id) AS attended_exams
FROM students AS stud
CROSS JOIN subjects AS subj
LEFT JOIN examinations AS exam 
ON stud.student_id = exam.student_id AND subj.subject_name = exam.subject_name
GROUP BY 
  stud.student_id, 
  stud.student_name, 
  subj.subject_name
ORDER BY stud.student_id ;