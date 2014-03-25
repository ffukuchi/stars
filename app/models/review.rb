class Review < ActiveRecord::Base

  belongs_to :teacher
  belongs_to :student

  validates :review, presence: true

  validates :school, presence: true
  validates :city, presence: true
  validates :state, presence: true

  STARS = [1,2,3,4,5]
  validates :stars, inclusion: {in: STARS}




end
