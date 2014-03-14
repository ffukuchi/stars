class Post < ActiveRecord::Base

  has_one :student, :through => :like
  has_one :teacher, :through => :like

  # we need  validations here

end
