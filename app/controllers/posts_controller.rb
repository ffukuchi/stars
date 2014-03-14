class PostsController < ApplicationController

=begin

fake list of posts to help me plan the data associations.
  POSTS = [
    {:post_id => 1, 
     :teacher_prefix => 'Mrs', 
     :teacher_last_name => 'Jones', 
     :student_first_name =>'John', 
     :school => 'PS1',
     :comment => 'Mrs. Jones was the best teacher I ever had!' },

    {:post_id => 2, 
     :teacher_prefix => 'Mrs', 
     :teacher_last_name => 'Smith', 
     :student_first_name =>'Mary', 
     :school => 'PS2',
     :comment => 'Mrs. Smith was the best teacher I ever had!' },

    {:post_id => 3, 
     :teacher_prefix => 'Mr.', 
     :teacher_last_name => 'Jackson', 
     :student_first_name =>'Edward', 
     :school => 'PS3',
     :comment => 'Mr. Jackson was the best teacher I ever had!' }
  ]

=end

  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def new
  end

end
