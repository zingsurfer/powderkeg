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

ActiveRecord::Schema.define(version: 2018_11_04_002203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "resorts", force: :cascade do |t|
    t.string "title"
    t.text "address"
    t.float "latitude"
    t.float "longitude"
    t.string "visited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snowcasts", force: :cascade do |t|
    t.float "apparent_temp"
    t.float "apparent_temp_max"
    t.datetime "apparent_temp_max_time"
    t.float "cloud_cover"
    t.float "precip_accumulation"
    t.float "precip_intensity_max"
    t.datetime "precip_intensity_max_time"
    t.float "precip_probability"
    t.string "precip_type"
    t.float "visibility"
    t.float "temp_max"
    t.datetime "temp_max_time"
    t.float "wind_gust"
    t.datetime "wind_gust_time"
    t.float "wind_speed"
    t.bigint "resort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resort_id"], name: "index_snowcasts_on_resort_id"
  end

  add_foreign_key "snowcasts", "resorts"
end
