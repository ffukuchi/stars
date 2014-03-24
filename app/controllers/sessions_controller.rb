class SessionsController < ApplicationController

  def new
  end

  def create
    if student = Student.authenticate(params[:email], params[:password])
      session[:student_id] = student.id
      flash[:notice] = "Welcome back, #{student.first_name}."
      redirect_to(session[:intended_url] || student)
      session[:intended_url] = nil
    else
      flash.now[:alert] = "Invalid email or password combo"
      render :new
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to students_path, notice: "New you're signed out!"
  end

end



