class Review < ActiveRecord::Base

  belongs_to :teachers
  # remember to add validations for spam

end
