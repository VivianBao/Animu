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

ActiveRecord::Schema.define(version: 2021_12_06_022710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animes", force: :cascade do |t|
    t.string "title_jp"
    t.string "title_eng"
    t.text "description"
    t.string "poster_url"
    t.float "rating"
    t.integer "rank"
    t.integer "episodes"
    t.integer "user_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "appearances", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "character_id"
    t.bigint "anime_id"
    t.index ["anime_id"], name: "index_appearances_on_anime_id"
    t.index ["character_id"], name: "index_appearances_on_character_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "list_id"
    t.bigint "anime_id"
    t.index ["anime_id"], name: "index_bookmarks_on_anime_id"
    t.index ["list_id"], name: "index_bookmarks_on_list_id"
  end

  create_table "castings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "anime_id"
    t.bigint "voice_actor_id"
    t.index ["anime_id"], name: "index_castings_on_anime_id"
    t.index ["voice_actor_id"], name: "index_castings_on_voice_actor_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voice_actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
  end

  create_table "voicings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "voice_actor_id"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_voicings_on_character_id"
    t.index ["voice_actor_id"], name: "index_voicings_on_voice_actor_id"
  end

  add_foreign_key "appearances", "animes"
  add_foreign_key "appearances", "characters"
  add_foreign_key "bookmarks", "animes"
  add_foreign_key "bookmarks", "lists"
  add_foreign_key "castings", "animes"
  add_foreign_key "castings", "voice_actors"
  add_foreign_key "voicings", "characters"
  add_foreign_key "voicings", "voice_actors"
end
