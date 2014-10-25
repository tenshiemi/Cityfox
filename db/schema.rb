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

ActiveRecord::Schema.define(version: 20141025203625) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "industry"
  end

  create_table "reviews", force: true do |t|
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
  end

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at"

end
