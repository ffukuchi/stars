module ApplicationHelper

  def current_student
    Student.find(session[:student_id]) if session[:student_id]
  end

end
