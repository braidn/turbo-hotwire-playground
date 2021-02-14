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

ActiveRecord::Schema.define(version: 2021_02_14_180653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "watch_cases", force: :cascade do |t|
    t.string "manufacturer"
    t.string "reference"
    t.date "purchase_date"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watch_exteriors", force: :cascade do |t|
    t.string "material"
    t.string "glass"
    t.string "glass_coating"
    t.string "size"
    t.string "clasp_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "watch_cases_id"
    t.index ["watch_cases_id"], name: "index_watch_exteriors_on_watch_cases_id"
  end

  create_table "watch_functions", force: :cascade do |t|
    t.string "water_resist"
    t.string "magnetic_resist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watch_movements", force: :cascade do |t|
    t.string "caliber"
    t.string "movement"
    t.decimal "power_reserve"
    t.decimal "accuracy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
