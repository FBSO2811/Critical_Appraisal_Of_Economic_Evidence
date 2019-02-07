# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_07_000347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "papers", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_papers_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "paper_id"
    t.bigint "project_id"
    t.string "type"
    t.string "question_1"
    t.string "question_2"
    t.string "question_3"
    t.string "question_4"
    t.string "question_5"
    t.string "question_6"
    t.string "question_7"
    t.string "question_8"
    t.string "question_9"
    t.string "question_10"
    t.string "question_11"
    t.string "question_12"
    t.string "question_13"
    t.string "question_14"
    t.string "question_15"
    t.string "question_16"
    t.string "question_17"
    t.string "question_18"
    t.string "question_19"
    t.string "question_20"
    t.string "question_21"
    t.string "question_22"
    t.string "question_23"
    t.string "question_24"
    t.string "question_25"
    t.string "question_26"
    t.string "question_27"
    t.string "question_28"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question_content_year"
    t.string "question_content_income"
    t.string "question_content_study"
    t.string "question_content_modelling"
    t.string "question_content_perspective_a"
    t.string "question_content_perspective_r"
    t.string "question_content_sensitivity"
    t.string "question_content_type"
    t.string "question_content_outcome"
    t.string "question_content_intervention"
    t.string "question_content_data"
    t.string "question_content_sample"
    t.string "question_content_description"
    t.string "question_content_nation"
    t.string "question_content_cost"
    t.index ["paper_id"], name: "index_questions_on_paper_id"
    t.index ["project_id"], name: "index_questions_on_project_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "papers", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "questions", "papers"
  add_foreign_key "questions", "projects"
  add_foreign_key "questions", "users"
end
