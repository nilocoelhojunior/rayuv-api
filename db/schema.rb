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

ActiveRecord::Schema.define(version: 2018_09_07_042411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geolocations", force: :cascade do |t|
    t.float "uv"
    t.datetime "uv_time"
    t.float "uv_max"
    t.datetime "uv_max_time"
    t.float "ozone"
    t.datetime "ozone_time"
    t.json "safe_exposure_time"
    t.json "sun_info"
    t.json "sun_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "protection_times", force: :cascade do |t|
    t.datetime "from_time"
    t.float "from_uv"
    t.datetime "to_time"
    t.float "to_uv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_details", force: :cascade do |t|
    t.bigint "weather_id"
    t.string "main"
    t.string "description"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weather_id"], name: "index_weather_details_on_weather_id"
  end

  create_table "weathers", force: :cascade do |t|
    t.json "coord"
    t.json "sys"
    t.json "main"
    t.json "wind"
    t.json "rain"
    t.json "clouds"
    t.integer "dt"
    t.string "name"
    t.integer "cod"
    t.string "base"
    t.integer "visibility"
    t.json "precipitation"
    t.integer "lastupdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
