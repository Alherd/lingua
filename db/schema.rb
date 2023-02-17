# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_06_144619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hardware_records", force: :cascade do |t|
    t.integer "house_id"
    t.integer "time"
    t.integer "has_panel"
    t.integer "has_battery"
    t.integer "panel_power"
    t.integer "battery_capacity"
    t.integer "panel"
    t.integer "battery"
    t.integer "production"
    t.integer "consumption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
