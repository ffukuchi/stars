class StudentsController < ApplicationController

  before_action :require_signin, except: [:new, :create]
  before_action :require_correct_student, only: [:edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @reviews = @student.reviews
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      session[:student_id] = @student.id
      redirect_to @student
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to  @student, notice: 'Student has been upated'
    else
      render :edit
    end
  end


  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    session[:student_id] = nil
    redirect_to students_path, alert: "Student has been deleted"
  end


private

  def require_correct_student
    @student = Student.find(params[:id])
    unless current_student?(@student)
      redirect_to root_url
    end
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end


end
