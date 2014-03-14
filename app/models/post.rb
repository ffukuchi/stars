class Post < ActiveRecord::Base

  has_many :teachers

  # we need a lot of validations here

end
