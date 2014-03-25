class ReviewsController < ApplicationController
  before_action :require_signin

  def index
    @teacher = Teacher.find(params[:teacher_id])
    @reviews = @teacher.reviews
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @review = @teacher.reviews.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = @teacher.reviews.new(review_params)
    @review.student = current_student
    if @review.save 
      redirect_to teacher_reviews_path(@teacher)
    else
      render :new
    end
  end


  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = @teacher.find(params[:id])
    if @review.update(teacher_params)
      flash[:notice] = "The review was successfully updated"
      redirect_to teacher_reviews(@teacher)
    else
      render :edit
    end
  end

  def destroy
    @review = @teacher.find(params[:id])
    @review.destroy # there should be an alert here.
    redirect_to teachers_reviews_url, alert: "review was destroyed"
  end


private

def review_params
  params.require(:review).permit(:review, :school, :stars, :city, :state)
end

end
