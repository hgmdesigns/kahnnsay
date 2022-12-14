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

ActiveRecord::Schema[7.0].define(version: 2022_09_29_071121) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.text "author"
    t.text "publisher"
    t.date "published_in_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_libraries", id: false, force: :cascade do |t|
    t.integer "library_id"
    t.integer "book_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.text "name"
    t.integer "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "membership"
    t.index ["location_id"], name: "index_libraries_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "lat"
    t.integer "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "libraries", "locations"
end
