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
    t.text     "btype"
  end

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.text "cimage_url"
    t.text "description"
  end

  create_table "enrolleds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "battle_id"
    t.integer "warship_id"
    t.text    "team"
  end

  add_index "enrolleds", ["battle_id"], name: "index_enrolleds_on_battle_id"
  add_index "enrolleds", ["user_id"], name: "index_enrolleds_on_user_id"
  add_index "enrolleds", ["warship_id"], name: "index_enrolleds_on_warship_id"

  create_table "equipment", force: :cascade do |t|
    t.text  "name"
    t.text  "equiptype"
    t.float "range"
  end

  create_table "equippeds", force: :cascade do |t|
    t.integer "amount"
    t.integer "warship_id"
    t.integer "equipment_id"
  end

  add_index "equippeds", ["equipment_id"], name: "index_equippeds_on_equipment_id"
  add_index "equippeds", ["warship_id"], name: "index_equippeds_on_warship_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "rating",     default: 1
    t.text    "content"
    t.integer "user_id"
    t.integer "warship_id"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"
  add_index "reviews", ["warship_id"], name: "index_reviews_on_warship_id"

  create_table "users", force: :cascade do |t|
    t.text    "name"
    t.integer "XP"
    t.text    "password"
    t.boolean "administrator", default: false
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
    t.text    "shiptype"
    t.integer "country_id"
  end

  add_index "warships", ["country_id"], name: "index_warships_on_country_id"

end
