require 'rails_helper'

RSpec.describe "AssessmentSeasons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/assessment_seasons/index"
      expect(response).to have_http_status(:success)
    end
  end

end
