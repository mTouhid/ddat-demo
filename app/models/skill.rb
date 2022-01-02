class Skill < ApplicationRecord
  has_many :role_skills
  has_many :roles, through: :role_skills
  has_many :skill_level, through: :role_skills
end
