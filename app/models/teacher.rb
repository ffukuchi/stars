class Teacher < ActiveRecord::Base

  has_many :reviews 


  validates :teacher, presence: true

  validates  :first_name, presence: true

  validates  :last_name, presence: true

  validates  :school, presence: true

  GRADE = %w(pre-K, K, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

  validates  :grade, inclusio: {in: RATINGS }

  validates :subject, presence: true


  # define a method to grab average rating for a teacher to show on the views


end

