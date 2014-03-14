class Teacher < ActiveRecord::Base

  has_many :reviews 


  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :school, presence: true

  validates :grade, presence: true

  validates :subject, presence: true


  # define a method to grab average rating for a teacher to show on the views


end

