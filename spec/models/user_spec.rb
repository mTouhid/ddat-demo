require 'rails_helper'

RSpec.describe User, type: :model do
  it "does not create a user when firstname is not provided" do
    user = User.new(firstname: "", lastname: "Lastname")
    expect(user).not_to be_valid  
  end
end
