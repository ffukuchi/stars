class PostsController < ApplicationController

  # fake list of posts to help me with schema.
  POSTS = [
    {:post_id => 1, 
     :prefix => 'Mrs', 
     :teacher_last_name => 'Jones', 
     :student_first_name =>'John', 
     :comment => 'Mrs. Jones was the best teacher I ever had!' },

    {:post_id => 2, 
     :prefix => 'Mrs', 
     :teacher_last_name => 'Smith', 
     :student_first_name =>'Mary', 
     :comment => 'Mrs. Smith was the best teacher I ever had!' },

    {:post_id => 1, 
     :prefix => 'Mr.', 
     :teacher_last_name => 'Jackson', 
     :student_first_name =>'Edward', 
     :comment => 'Mr. Jackson was the best teacher I ever had!' }
  ]

  def index
    @posts = POSTS
  end
  

  

end
