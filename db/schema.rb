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

ActiveRecord::Schema.define(version: 2020_03_01_043501) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "ordinal"
    t.string "suit"
    t.string "description"
  end

  create_table "spread_positions", force: :cascade do |t|
    t.integer "spread_id"
    t.integer "x"
    t.integer "y"
    t.integer "ordinal"
    t.string "description"
    t.index ["spread_id"], name: "index_spread_positions_on_spread_id"
  end

  create_table "spreads", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

end
