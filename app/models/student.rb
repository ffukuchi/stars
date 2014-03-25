class Student < ActiveRecord::Base
  has_secure_password

  has_many :reviews, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/, uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8, allow_blank: true }

  def self.authenticate(email, password)
    student = Student.find_by(email: email)
    student && student.authenticate(password)
  end

end
