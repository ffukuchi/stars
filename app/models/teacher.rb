class Teacher < ActiveRecord::Base

  has_many :students

end

# TO_FIX:  TEACHER only has many STUDENT through the POST table, it isn't direct 
