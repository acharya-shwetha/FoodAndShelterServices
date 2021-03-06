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

ActiveRecord::Schema.define(version: 20170424002054) do

  create_table "clients", force: :cascade do |t|
    t.string   "full_name"
    t.integer  "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "contact"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["username"], name: "index_employees_on_username", unique: true
  end

  create_table "service1s", force: :cascade do |t|
    t.string   "service_type"
    t.string   "employee_name"
    t.string   "site_name"
    t.string   "client_name"
    t.string   "date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_type"
    t.integer  "site_id"
    t.integer  "employee_id"
    t.integer  "client_id"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "site_name"
    t.string   "site_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "site_contact_number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
