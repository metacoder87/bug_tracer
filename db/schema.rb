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

ActiveRecord::Schema.define(version: 2022_10_17_044821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bugs", force: :cascade do |t|
    t.text "path", null: false
    t.text "description", null: false
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["path"], name: "index_bugs_on_path", unique: true
    t.index ["user_id"], name: "index_bugs_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id", null: false
    t.bigint "bug_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bug_id"], name: "index_comments_on_bug_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id", null: false
    t.bigint "bug_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bug_id"], name: "index_replies_on_bug_id"
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bugs", "users"
  add_foreign_key "comments", "bugs"
  add_foreign_key "comments", "users"
  add_foreign_key "replies", "bugs"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "users"
end
