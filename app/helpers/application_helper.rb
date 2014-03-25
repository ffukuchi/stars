module ApplicationHelper

  def current_student
    Student.find(session[:student_id]) if session[:student_id]
  end

  def teacher_name
    teacher.first_name + " " + teacher.last_name
  end

  def student_name
    student.first_name + " " + student.last_name
  end

end
