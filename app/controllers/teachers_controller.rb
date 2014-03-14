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
      flash[:notice] = "A teacher was successfully created"
      redirect_to teachers_url 
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      flash[:notice] = "Teacher information was successfully updated"
      redirect_to teacher_path(@teacher)
    else
      render :edit
    end
  end

  # where does this appear? 
  # add the link in the path for links - method: :delete, data: {confirm: 'are you sure?'}
  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy # there should be an alert here.
    redirect_to teachers_url, alert: "a teacher was destroyed (how very mean)"
  end

private

def teacher_params
  params.require(:teacher).permit(:last_name, :first_name, :school, :grade, :subject)
end

end
