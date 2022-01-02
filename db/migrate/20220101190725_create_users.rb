class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :department, null:false
      t.string :job_title, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :is_admin, default: false
      t.timestamps
    end
  end
end
