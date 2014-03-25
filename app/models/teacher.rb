class Teacher < ActiveRecord::Base

  has_many :reviews, dependent: :destroy


  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :school, presence: true

  validates :grade, presence: true

  validates :subject, presence: true


end

