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

ActiveRecord::Schema.define(version: 20141109200008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "markets", force: true do |t|
    t.string   "FMID"
    t.string   "market_name"
    t.string   "website"
    t.string   "street"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.integer  "zip"
    t.string   "season1_date"
    t.string   "season1_time"
    t.string   "season2_date"
    t.string   "season2_time"
    t.string   "season3_date"
    t.string   "season3_time"
    t.string   "season4_date"
    t.string   "season4_time"
    t.string   "x"
    t.string   "y"
    t.string   "location"
    t.string   "credit"
    t.string   "wic"
    t.string   "wic_cash"
    t.string   "SFMNP"
    t.string   "SNAP"
    t.string   "baked_goods"
    t.string   "cheese"
    t.string   "crafts"
    t.string   "flowers"
    t.string   "eggs"
    t.string   "seafood"
    t.string   "herbs"
    t.string   "vegetables"
    t.string   "honey"
    t.string   "jams"
    t.string   "maple"
    t.string   "meat"
    t.string   "nursery"
    t.string   "nuts"
    t.string   "plants"
    t.string   "poultry"
    t.string   "prepared"
    t.string   "soap"
    t.string   "trees"
    t.string   "wine"
    t.string   "update_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

end
