SELECT students.name AS student, avg(assignment_submissions.duration) AS avg_assignment_dur, avg(assignments.duration) AS avg_estimated_dur
  FROM students
  JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id 
  JOIN assignments
  ON assignment_submissions.assignment_id = assignments.id
  WHERE students.end_date IS NULL
  GROUP BY student 
  ORDER BY avg_assignment_dur