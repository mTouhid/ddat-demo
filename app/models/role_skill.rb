class RoleSkill < ApplicationRecord
  belongs_to :role
  belongs_to :skill
  belongs_to :skill_level
end
