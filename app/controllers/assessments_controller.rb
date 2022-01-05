class AssessmentsController < ApplicationController

  before_action :require_logged_in
  before_action :set_assessment, only: [:show, :edit, :update]
  
  def show
  end

  def new
    @role = Role.find(params[:role])
    @skills = @role.role_skills
    @assessor_email = params[:assessor_email_address]
    @assessment = Assessment.new
  end

  def create
    byebug
    @assessment = current_user.assessments.new(assessment_params)
    if @assessment.save 
      flash[:success] = "Congratulations. Your have submitted your assessment."
      redirect_to root_path
    else
      flash.now[:danger] = "Something went wrong. Please correct the marked fields below."
      render 'new'
    end
  end

  def edit
  end

  def update
    if @assessment.update(assessment_params)
      flash[:success] = "Assessment successfully updated."
      redirect_to assessment_path(@assessment)
    else
      flash.now[:danger] = "Something went wrong."
      render 'edit'
    end
  end

  private

  def set_assessment
    @assessment = Assessment.find(params[:id])
  end

  def assessment_params
    params.require(:assessment).permit(:role_id, :assessment_season_id, :assessor_email, :skill1_name, :skill1_definition, :skill1_skill_level_name, :skill1_skill_level_definition, :skill1_skill_level_status, :skill1_self_assessment_justification, :skill2_name, :skill2_definition, :skill2_skill_level_name, :skill2_skill_level_definition, :skill2_skill_level_status, :skill2_self_assessment_justification, :skill3_name, :skill3_definition, :skill3_skill_level_name, :skill3_skill_level_definition, :skill3_skill_level_status, :skill3_self_assessment_justification)
  end
end
