# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141105093844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "industry"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.boolean  "would_work_with"
    t.text     "description"
    t.text     "response"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "rating_payment"
    t.integer  "rating_communication"
    t.integer  "rating_expectations"
    t.string   "title"
    t.boolean  "flagged",              default: false
    t.integer  "rating_overall"
    t.integer  "helpful",              default: 0
    t.integer  "unhelpful",            default: 0
  end

  create_table "user_company_relations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verified",   default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                      null: false
    t.string   "crypted_password",           null: false
    t.string   "salt",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.integer  "company_id"
    t.string   "phone"
    t.string   "role"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree

end
