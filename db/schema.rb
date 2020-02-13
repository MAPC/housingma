# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_11_152724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fields", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "narrative", limit: 255
    t.string "alias", limit: 255
    t.integer "sort_order"
    t.integer "subtopic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "operation", limit: 255, default: "average"
    t.string "source", limit: 255
    t.text "methodology"
  end

  create_table "quotations", id: :serial, force: :cascade do |t|
    t.string "quote", limit: 255
    t.string "author", limit: 255
    t.string "agency", limit: 255
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "published", default: false
  end

  create_table "subtopics", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "narrative", default: "", null: false
    t.integer "sort_order"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topic_areas", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "narrative", default: "", null: false
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.text "narrative", default: "", null: false
    t.integer "sort_order"
    t.integer "topic_area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
