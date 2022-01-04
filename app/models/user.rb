class User < ApplicationRecord
  has_many :assessments
  has_many :roles, through: :assessments
  has_secure_password
  validates :firstname, presence: true, length: {minimum:2, maximum:50}
  validates :lastname, presence: true, length: {minimum:2, maximum:50}
  validates :department, presence: true, length: {minimum:4, maximum:100}
  validates :job_title, presence: true, length: {minimum:4, maximum:100}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:4, maximum:100}

  def display_name
    "#{firstname} #{lastname}"
  end
end
