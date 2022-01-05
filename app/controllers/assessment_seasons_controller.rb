class AssessmentSeasonsController < ApplicationController
  def index
    @assessment_seasons = AssessmentSeason.all
  end
end
