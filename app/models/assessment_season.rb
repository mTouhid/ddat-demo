class AssessmentSeason < ApplicationRecord
  has_many :assessments

  scope :current_season, -> { where('end_date >= ?', Date.today) }
end
