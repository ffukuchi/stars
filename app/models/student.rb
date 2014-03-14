class Student < ActiveRecord::Base

  has_many :teachers, :through => :likes
  has_many :post


end

# TO_FIX:  STUDENT only has many TEACHER through the POST table, it isn't direct. 
