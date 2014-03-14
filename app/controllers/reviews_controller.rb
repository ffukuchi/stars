class ReviewsController < ApplicationController

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
    if @review.save 
      redirect_to teacher_reviews_path(@teacher)
    else
      render :new
    end
    
  end

  def edit
  end
  
  def update
  end

  def destroy
  end


private

def review_params
  params.require(:review).permit(:review, :schools, :stars)
end

end
