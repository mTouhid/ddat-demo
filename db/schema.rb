# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_03_222227) do

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "assessment_seasons", force: :cascade do |t|
    t.string "name", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assessments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.integer "assessment_season_id", null: false
    t.string "skill1_name"
    t.text "skill1_definition"
    t.string "skill1_skill_level_name"
    t.text "skill1_skill_level_definition"
    t.string "skill1_skill_level_status"
    t.text "skill1_self_assessment_justification"
    t.text "skill1_assessor_comment"
    t.string "skill2_name"
    t.text "skill2_definition"
    t.string "skill2_skill_level_name"
    t.text "skill2_skill_level_definition"
    t.string "skill2_skill_level_status"
    t.text "skill2_self_assessment_justification"
    t.text "skill2_assessor_comment"
    t.string "skill3_name"
    t.text "skill3_definition"
    t.string "skill3_skill_level_name"
    t.text "skill3_skill_level_definition"
    t.string "skill3_skill_level_status"
    t.text "skill3_self_assessment_justification"
    t.text "skill3_assessor_comment"
    t.string "skill4_name"
    t.text "skill4_definition"
    t.string "skill4_skill_level_name"
    t.text "skill4_skill_level_definition"
    t.string "skill4_skill_level_status"
    t.text "skill4_self_assessment_justification"
    t.text "skill4_assessor_comment"
    t.string "skill5_name"
    t.text "skill5_definition"
    t.string "skill5_skill_level_name"
    t.text "skill5_skill_level_definition"
    t.string "skill5_skill_level_status"
    t.text "skill5_self_assessment_justification"
    t.text "skill5_assessor_comment"
    t.string "skill6_name"
    t.text "skill6_definition"
    t.string "skill6_skill_level_name"
    t.text "skill6_skill_level_definition"
    t.string "skill6_skill_level_status"
    t.text "skill6_self_assessment_justification"
    t.text "skill6_assessor_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "role_skills", force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "skill_id", null: false
    t.integer "skill_level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "skill_level_definition"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skill_levels", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.text "definition", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "department", null: false
    t.string "job_title", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
