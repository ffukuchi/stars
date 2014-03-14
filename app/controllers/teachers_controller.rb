class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def destroy
  end

private

def teacher_params
  params.require(:teacher).permit(:last_name, :first_name, :school, :grade, :subject)
end

end
