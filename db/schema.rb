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

ActiveRecord::Schema.define(version: 20160107090751) do

  create_table "properties", force: :cascade do |t|
    t.string   "address",             limit: 255,             null: false
    t.integer  "rent",                limit: 4,               null: false
    t.float    "footprint",           limit: 24,              null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "user_id",             limit: 4,               null: false
    t.integer  "administration_cost", limit: 4
    t.integer  "common_service_cost", limit: 4
    t.integer  "lease_deposit",       limit: 4
    t.integer  "key_money",           limit: 4,   default: 0
    t.integer  "category",            limit: 4,   default: 0
    t.integer  "room_category",       limit: 4,   default: 0
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "is_host",                            default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "properties", "users"
end
