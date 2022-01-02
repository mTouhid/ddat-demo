class CreateRoleSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :role_skills do |t|
      t.integer :role_id, null: false
      t.integer :skill_id, null: false
      t.integer :skill_level_id, null: false
      t.timestamps
    end
  end
end
