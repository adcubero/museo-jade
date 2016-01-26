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

ActiveRecord::Schema.define(version: 20160126011047) do

  create_table "audioguides", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "text"
    t.string   "audio"
    t.integer  "exhibition_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "file"
    t.string   "key"
    t.integer  "id1"
    t.integer  "id2"
  end

  add_index "audioguides", ["exhibition_id"], name: "index_audioguides_on_exhibition_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "date"
    t.string   "file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exhibition_images", force: :cascade do |t|
    t.string   "file"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "exhibition_id"
  end

  add_index "exhibition_images", ["exhibition_id"], name: "index_exhibition_images_on_exhibition_id"

  create_table "exhibitions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "miniDescription"
    t.integer  "item_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "file"
  end

  add_index "exhibitions", ["item_id"], name: "index_exhibitions_on_item_id"

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "room"
    t.string   "showcase"
    t.integer  "item_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "exhibition_id"
    t.string   "file"
    t.string   "audio"
  end

  add_index "pieces", ["exhibition_id"], name: "index_pieces_on_exhibition_id"
  add_index "pieces", ["item_id"], name: "index_pieces_on_item_id"

  create_table "tickets", force: :cascade do |t|
    t.integer  "adult"
    t.integer  "child"
    t.integer  "student"
    t.integer  "elder"
    t.date     "date"
    t.integer  "code"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
