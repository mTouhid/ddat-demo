class HomeController < ApplicationController
  def index
    @roles = Role.all
    @current_season = AssessmentSeason.current_season.first
  end
end
