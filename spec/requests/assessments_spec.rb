require 'rails_helper'

RSpec.describe "Assessments", type: :request do
  xdescribe "GET /new" do
    it "returns http success" do
      get "/assessments/new"
      expect(response).to have_http_status(:success)
    end
  end

end
