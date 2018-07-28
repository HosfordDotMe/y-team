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

ActiveRecord::Schema.define(version: 2018_07_28_033453) do

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "places_id"
    t.integer "category"
    t.bigint "user_id"
    t.boolean "enabled"
    t.index ["places_id"], name: "index_events_on_places_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "place_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "rating"
    t.string "title"
    t.text "text"
    t.bigint "user_id"
    t.bigint "place_id"
    t.boolean "flagged"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_place_comments_on_place_id"
    t.index ["user_id"], name: "index_place_comments_on_user_id"
  end

  create_table "places", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.string "image_uri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "address"
    t.string "gplaces_id"
    t.integer "category"
    t.bigint "user_id"
    t.boolean "enabled"
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image_uri"
    t.string "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "uname"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.boolean "enabled"
  end

  add_foreign_key "events", "places", column: "places_id"
  add_foreign_key "events", "users"
  add_foreign_key "place_comments", "places"
  add_foreign_key "place_comments", "users"
  add_foreign_key "places", "users"
  add_foreign_key "profiles", "users"
end
