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

ActiveRecord::Schema.define(version: 2019_09_02_150502) do

  create_table "diagnoses", force: :cascade do |t|
    t.string "injury"
    t.string "disease"
    t.string "symptoms"
    t.string "player"
    t.text "inference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "treatment"
    t.text "lifestyle"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.text "description"
    t.integer "injury_id"
    t.string "symptoms"
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
    t.integer "code"
    t.index ["code"], name: "index_injuries_on_code", unique: true
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
    t.text "description"
    t.integer "injury_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_symptoms_on_code", unique: true
  end

  create_table "treatments", force: :cascade do |t|
    t.string "code"
    t.text "description"
    t.string "lifestyle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "disease_code"
    t.index ["code"], name: "index_treatments_on_code", unique: true
  end

end
