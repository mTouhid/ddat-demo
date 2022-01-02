class CreateAssessmentSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :assessment_seasons do |t|
      t.string :name, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.timestamps
    end
  end
end
