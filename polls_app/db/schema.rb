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

ActiveRecord::Schema.define(version: 2020_12_01_213325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_choice_tables", force: :cascade do |t|
    t.integer "question_id", null: false
    t.string "text", null: false
    t.index ["question_id"], name: "index_answer_choice_tables_on_question_id"
  end

  create_table "answer_response_tables", force: :cascade do |t|
    t.integer "answer_choice_id", null: false
    t.integer "question_id", null: false
    t.integer "user_id", null: false
    t.index ["answer_choice_id"], name: "index_answer_response_tables_on_answer_choice_id"
    t.index ["question_id"], name: "index_answer_response_tables_on_question_id"
  end

  create_table "poll_tables", force: :cascade do |t|
    t.integer "author_id", null: false
    t.string "title", null: false
    t.index ["author_id"], name: "index_poll_tables_on_author_id"
  end

  create_table "question_tables", force: :cascade do |t|
    t.integer "poll_id", null: false
    t.string "text", null: false
    t.index ["poll_id"], name: "index_question_tables_on_poll_id"
  end

  create_table "user_tables", force: :cascade do |t|
    t.string "username", null: false
    t.index ["username"], name: "index_user_tables_on_username", unique: true
  end

end
