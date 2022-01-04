class AssessmentsController < ApplicationController

  before_action :require_logged_in
  
  def new
    @role = Role.find(params[:role])
    @skills = @role.role_skills
  end
end
