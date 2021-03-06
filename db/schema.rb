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

ActiveRecord::Schema.define(version: 2018_06_29_191531) do

  create_table "candidates", force: :cascade do |t|
    t.string "race"
    t.string "name"
    t.string "rating"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imgur_id"
    t.string "section1"
    t.string "section2"
    t.string "section3"
    t.string "section4"
    t.string "section5"
    t.string "section6"
    t.string "section7"
    t.string "section8"
    t.integer "loadOrder"
    t.integer "responded"
  end

  create_table "past_dues", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
