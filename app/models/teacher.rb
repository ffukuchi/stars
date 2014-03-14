class Teacher < ActiveRecord::Base

  has_many :student, :through => :like
  has_many :post

end

