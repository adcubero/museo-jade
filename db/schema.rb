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

ActiveRecord::Schema.define(version: 20151216075122) do

  create_table "exhibitions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "miniDescription"
    t.integer  "item_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
  end

  add_index "pieces", ["exhibition_id"], name: "index_pieces_on_exhibition_id"
  add_index "pieces", ["item_id"], name: "index_pieces_on_item_id"

end