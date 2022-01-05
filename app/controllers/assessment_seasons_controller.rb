class AssessmentSeasonsController < ApplicationController

  before_action :set_assessment_season, only: [:edit, :update, :delete] 
  def index
    @assessment_seasons = AssessmentSeason.all
  end

  def new
    @assessment_season = AssessmentSeason.new
  end

  def create
    @assessment_season = AssessmentSeason.new(assessment_season_params)
    if @assessment_season.save 
      flash[:success] = "A new assessment season has been created."
      redirect_to assessment_seasons_path
    else
      flash.now[:danger] = "Somethign went wrong"
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @assessment_season.update(assessment_season_params)
      flash[:success] = "Updated successfully."
      redirect_to assessment_seasons_path
    else
      flash.now[:danger] = "Something went wrong."
    end
  end

  private

  def set_assessment_season
    @assessment_season = AssessmentSeason.find(params[:id])
  end

  def assessment_season_params
    params.require(:assessment_season).permit(:name, :start_date, :end_date)
  end
end
