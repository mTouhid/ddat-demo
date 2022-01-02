class Assessment < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :assessment_season
end
