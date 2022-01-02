class SkillLevel < ApplicationRecord
  has_many :role_skills
  has_many :skills, through: :role_skills
  has_many :roles, through: :role_skills
end
