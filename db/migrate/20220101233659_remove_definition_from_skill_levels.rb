class RemoveDefinitionFromSkillLevels < ActiveRecord::Migration[6.1]
  def change
    remove_column :skill_levels, :definition
  end
end
