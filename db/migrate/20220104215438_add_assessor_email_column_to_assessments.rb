class AddAssessorEmailColumnToAssessments < ActiveRecord::Migration[6.1]
  def change
    add_column :assessments, :assessor_email, :string, after: :assessment_season_id
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
