class Assessment < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :assessment_season
  has_rich_text :skill1_self_assessment_justification, :skill2_self_assessment_justification, :skill3_self_assessment_justification
end
