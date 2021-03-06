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

ActiveRecord::Schema.define(version: 20151218180342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "full_address"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "zip_code_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "addresses", ["user_type", "user_id"], name: "index_addresses_on_user_type_and_user_id", using: :btree
  add_index "addresses", ["zip_code_id"], name: "index_addresses_on_zip_code_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.date     "opening_date"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "{:index=>true, :foreign_key=>true}_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "mobile"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "customers_work_grids", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "work_grid_id"
  end

  add_index "customers_work_grids", ["customer_id"], name: "index_customers_work_grids_on_customer_id", using: :btree
  add_index "customers_work_grids", ["work_grid_id"], name: "index_customers_work_grids_on_work_grid_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.date     "entry_date"
    t.string   "mobile"
    t.string   "picture"
    t.string   "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true, using: :btree
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.date     "opening_date"
    t.integer  "country_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "regions", ["country_id"], name: "index_regions_on_country_id", using: :btree

  create_table "regions_services", force: :cascade do |t|
    t.integer "region_id"
    t.integer "service_id"
  end

  add_index "regions_services", ["region_id"], name: "index_regions_services_on_region_id", using: :btree
  add_index "regions_services", ["service_id"], name: "index_regions_services_on_service_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "services_regions", force: :cascade do |t|
    t.integer "service_id"
    t.integer "region_id"
  end

  add_index "services_regions", ["region_id"], name: "index_services_regions_on_region_id", using: :btree
  add_index "services_regions", ["service_id"], name: "index_services_regions_on_service_id", using: :btree

  create_table "slots", force: :cascade do |t|
    t.datetime "start_time"
    t.integer  "duration"
    t.boolean  "prefered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.date     "entryDate"
    t.string   "job"
    t.string   "role"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "address_street"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "timegrids", force: :cascade do |t|
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "profile_id"
    t.string   "profile_type"
    t.string   "name"
    t.string   "firstname"
    t.date     "birthDate"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["profile_id", "profile_type"], name: "index_users_on_profile_id_and_profile_type", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "work_days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_grids", force: :cascade do |t|
    t.integer  "work_day_id"
    t.integer  "slot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "work_grids", ["slot_id"], name: "index_work_grids_on_slot_id", using: :btree
  add_index "work_grids", ["work_day_id"], name: "index_work_grids_on_work_day_id", using: :btree

  create_table "zip_codes", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "zip_codes", ["region_id"], name: "index_zip_codes_on_region_id", using: :btree

  add_foreign_key "addresses", "zip_codes"
  add_foreign_key "work_grids", "slots"
  add_foreign_key "work_grids", "work_days"
end
