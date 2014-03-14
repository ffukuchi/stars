class Teacher < ActiveRecord::Base

  has_many :reviews 

  # remember to add validations 
end

