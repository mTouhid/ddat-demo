class User < ApplicationRecord
  
  has_many :assessments
  has_many :roles, through: :assessments

  before_save :make_email_downcase

  has_secure_password
  validates :firstname, presence: true, length: {minimum:2, maximum:50}
  validates :lastname, presence: true, length: {minimum:2, maximum:50}
  validates :department, presence: true, length: {minimum:4, maximum:100}
  validates :job_title, presence: true, length: {minimum:4, maximum:100}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:4, maximum:150}, format: {with: VALID_EMAIL_REGEX}

  def display_name
    "#{firstname} #{lastname}"
  end

  private

  def make_email_downcase
    self.email = email.strip.downcase
  end

end
