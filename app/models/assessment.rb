class Assessment < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :assessment_season
  has_rich_text :skill1_self_assessment_justification
  has_rich_text :skill2_self_assessment_justification
  has_rich_text :skill3_self_assessment_justification
  has_rich_text :skill4_self_assessment_justification
  has_rich_text :skill5_self_assessment_justification
  has_rich_text :skill6_self_assessment_justification
end
