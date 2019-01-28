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

ActiveRecord::Schema.define(version: 2019_01_28_182845) do

  create_table "climbers", force: :cascade do |t|
    t.string "name"
    t.string "award_1", default: "?"
    t.string "award_2", default: "?"
    t.string "award_3", default: "?"
    t.string "year"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.string "email"
    t.string "cell"
  end

  create_table "practices", force: :cascade do |t|
    t.string "date"
    t.text "plan"
    t.string "author"
    t.string "approval_1", default: "none"
    t.string "approval_2", default: "none"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
