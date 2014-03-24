class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


private

  def require_signin
    unless current_student
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Please sign in first."
    end
  end

  def current_student
    Student.find(session[:student_id]) if session[:student_id]
  end

  helper_method :current_student


  def current_student?(student)
    current_student == student
  end

  helper_method :current_student?

  def require_admin
    unless current_student_admin?
      redirect_to root_url, alert: "unauthorized access"
    end
  end

  def current_student_admin?
    current_student && current_student.admin?
  end

  helper_method :current_student_admin?


end
