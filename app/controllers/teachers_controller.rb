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
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_url 
    else
      render :new
    end
  end

  # where is the edit action accessed?
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

  # where does this appear? 
  # add the link in the path for links - method: :delete, data: {confirm: 'are you sure?'}
  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_url
  end

private

def teacher_params
  params.require(:teacher).permit(:last_name, :first_name, :school, :grade, :subject)
end

end
