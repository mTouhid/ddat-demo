class AddSkillLevelDefinitionToRoleSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :role_skills, :skill_level_definition, :text
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
