class AssessmentsController < ApplicationController
  def new
    @role = Role.find(params[:role])
    @skills = @role.role_skills
  end
end
