class User < ApplicationRecord
  has_many :assessments
  has_many :roles, through: :assessments
  has_secure_password
  validates :firstname, presence: true, length: {minimum:2, maximum:50}
end
