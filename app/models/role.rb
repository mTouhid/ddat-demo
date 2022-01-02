class Role < ApplicationRecord
  has_many :assessments
  has_many :users, through: :assessments
  has_many :role_skills
  has_many :skills, through: :role_skills
  has_many :skill_levels, through: :role_skills
end
