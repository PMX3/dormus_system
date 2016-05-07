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

ActiveRecord::Schema.define(version: 20160507071930) do

  create_table "applicants", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "nickname"
    t.text     "image_path"
    t.string   "gender"
    t.string   "civil_status"
    t.text     "address"
    t.string   "contact_number"
    t.string   "landline_number"
    t.string   "email"
    t.string   "nationality"
    t.string   "religion"
    t.date     "birthday"
    t.string   "school"
    t.text     "school_address"
    t.string   "major"
    t.integer  "year"
    t.text     "medical_information"
    t.text     "personal_information"
    t.string   "guardian_name"
    t.string   "guardian_contact_number"
    t.text     "guardian_address"
    t.string   "guardian_email"
    t.string   "room_type"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "stage"
    t.integer  "room_number"
    t.string   "image_path_file_name"
    t.string   "image_path_content_type"
    t.integer  "image_path_file_size"
    t.datetime "image_path_updated_at"
    t.integer  "violation"
  end

  create_table "deals", force: :cascade do |t|
    t.string   "deal_type"
    t.decimal  "amount_due"
    t.decimal  "amount_paid"
    t.datetime "deal_timestamp"
    t.string   "payment_for"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "food_plans", force: :cascade do |t|
    t.date     "food_plan_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_number"
    t.text     "address"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string   "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "room_number"
    t.string   "room_type"
    t.integer  "room_capacity"
    t.decimal  "room_price"
    t.integer  "occupant_count"
    t.string   "room_status"
    t.string   "floor_area"
    t.integer  "bed_count"
    t.integer  "bathroom_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "statement_of_accounts", force: :cascade do |t|
    t.decimal  "electric_due"
    t.decimal  "water_due"
    t.decimal  "deposit"
    t.decimal  "room_total_due"
    t.decimal  "personal_laundry_fees"
    t.string   "personal_other_fees"
    t.decimal  "personal_meal_plan_fees"
    t.decimal  "personal_total_due"
    t.date     "due_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.datetime "date_sent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "isAdmin",                default: false
    t.boolean  "isParent",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
