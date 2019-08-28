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

ActiveRecord::Schema.define(version: 2019_08_27_161949) do

  create_table "diagnosis", force: :cascade do |t|
    t.integer "injury_id"
    t.string "disease"
    t.string "symptoms"
    t.string "player"
    t.text "inference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "description"
    t.integer "injury_id"
    t.string "symptoms"
    t.string "treatment"
    t.string "affected_area"
    t.string "risk_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_diseases_on_code", unique: true
  end

  create_table "injuries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "full_name"
    t.integer "age"
    t.string "gender"
    t.string "height"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.integer "injury_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_symptoms_on_code", unique: true
  end

  create_table "treatment", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.string "lifestyle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_treatment_on_code", unique: true
  end

end
