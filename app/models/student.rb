class Student < ActiveRecord::Base

  has_many :posts
  has_many :teachers

end

# TO_FIX:  STUDENT only has many TEACHER through the POST table, it isn't direct. 
