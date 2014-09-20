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

ActiveRecord::Schema.define(version: 20140920102608) do

  create_table "journey_entries", force: true do |t|
    t.string   "start_postcode"
    t.string   "start_latitude"
    t.string   "start_longitude"
    t.string   "end_postcode"
    t.string   "end_latitude"
    t.string   "end_longitude"
    t.integer  "transport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "journey_entries", ["transport_id"], name: "index_journey_entries_on_transport_id"

  create_table "journeys", force: true do |t|
    t.string   "start_postcode"
    t.string   "start_latitude"
    t.string   "start_longitude"
    t.string   "end_postcode"
    t.string   "end_latitude"
    t.string   "end_longitude"
    t.integer  "transport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "journeys", ["transport_id"], name: "index_journeys_on_transport_id"

  create_table "transports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "co2_per_km"
    t.float    "ch4_per_km"
    t.float    "n2o_per_km"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end