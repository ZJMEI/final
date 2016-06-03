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

ActiveRecord::Schema.define(version: 0) do

  create_table "battles", force: :cascade do |t|
    t.text     "map"
    t.datetime "date"
    t.text     "winner"
  end

  create_table "enrolleds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "battle_id"
    t.integer "ship_id"
  end

  add_index "enrolleds", ["battle_id"], name: "index_enrolleds_on_battle_id"
  add_index "enrolleds", ["ship_id"], name: "index_enrolleds_on_ship_id"
  add_index "enrolleds", ["user_id"], name: "index_enrolleds_on_user_id"

  create_table "equipment", force: :cascade do |t|
    t.text  "name"
    t.text  "equiptype"
    t.float "range"
  end

  create_table "equippeds", force: :cascade do |t|
    t.integer "ship_id"
    t.integer "equip_id"
    t.integer "amount"
  end

  add_index "equippeds", ["equip_id"], name: "index_equippeds_on_equip_id"
  add_index "equippeds", ["ship_id"], name: "index_equippeds_on_ship_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "rating",  default: 1
    t.text    "content"
    t.integer "ship_id"
    t.integer "user_id"
  end

  add_index "reviews", ["ship_id"], name: "index_reviews_on_ship_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.text    "name"
    t.integer "XP"
    t.text    "password"
  end

  create_table "warships", force: :cascade do |t|
    t.text    "name"
    t.text    "image_url"
    t.integer "tier"
    t.integer "survivability"
    t.integer "artillery"
    t.integer "aircraft"
    t.integer "torpedoes"
    t.integer "aadefense"
    t.integer "maneuverability"
    t.integer "concealment"
    t.float   "maxspeed"
    t.float   "detectrange"
    t.text    "country"
    t.text    "shiptype"
  end

end
