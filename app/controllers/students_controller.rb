class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: "You're now signed up."
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
    redirect_to root_url, alert: "Student has been deleted"
  end


private

def student_params
  params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation)
end


end
