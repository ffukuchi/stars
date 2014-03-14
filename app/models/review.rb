class Review < ActiveRecord::Base

  belongs_to :teachers

  validates :review, presence: true

  validates :school, presence: true

  STARS = [1,2,3,4,5]
  validates :stars, inclusion: {in: STARS}




end
