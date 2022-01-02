class CreateAssessments < ActiveRecord::Migration[6.1]
  def change
    create_table :assessments do |t|
      t.integer :user_id, null: false
      t.integer :role_id, null: false
      t.integer :assessment_season_id, null: false
      t.string :skill1_name
      t.text :skill1_definition
      t.string :skill1_skill_level_name
      t.text :skill1_skill_level_definition
      t.string :skill1_skill_level_status
      t.text :skill1_self_assessment_justification
      t.text :skill1_assessor_comment
      t.string :skill2_name
      t.text :skill2_definition
      t.string :skill2_skill_level_name
      t.text :skill2_skill_level_definition
      t.string :skill2_skill_level_status
      t.text :skill2_self_assessment_justification
      t.text :skill2_assessor_comment
      t.string :skill3_name
      t.text :skill3_definition
      t.string :skill3_skill_level_name
      t.text :skill3_skill_level_definition
      t.string :skill3_skill_level_status
      t.text :skill3_self_assessment_justification
      t.text :skill3_assessor_comment
      t.string :skill4_name
      t.text :skill4_definition
      t.string :skill4_skill_level_name
      t.text :skill4_skill_level_definition
      t.string :skill4_skill_level_status
      t.text :skill4_self_assessment_justification
      t.text :skill4_assessor_comment
      t.string :skill5_name
      t.text :skill5_definition
      t.string :skill5_skill_level_name
      t.text :skill5_skill_level_definition
      t.string :skill5_skill_level_status
      t.text :skill5_self_assessment_justification
      t.text :skill5_assessor_comment
      t.string :skill6_name
      t.text :skill6_definition
      t.string :skill6_skill_level_name
      t.text :skill6_skill_level_definition
      t.string :skill6_skill_level_status
      t.text :skill6_self_assessment_justification
      t.text :skill6_assessor_comment
      t.timestamps
    end
  end
end
