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

ActiveRecord::Schema.define(version: 2019_09_10_205800) do

  create_table "games", force: :cascade do |t|
    t.integer "status"
  end

  create_table "player_games", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.integer "score"
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.integer "high_score"
    t.string "motto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "text"
    t.string "author"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "game_id"
    t.integer "quote_id"
    t.index ["game_id"], name: "index_rounds_on_game_id"
    t.index ["quote_id"], name: "index_rounds_on_quote_id"
  end

end
