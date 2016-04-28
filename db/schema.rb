# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160426004017) do

  create_table "digital_fingerprints", force: :cascade do |t|
    t.string   "fingerprint"
    t.string   "ua"
    t.string   "action"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "title"
    t.string   "option"
    t.string   "short"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pair_answers", force: :cascade do |t|
    t.integer  "pair_id"
    t.integer  "answer_id"
    t.integer  "sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pair_answers", ["answer_id"], name: "index_pair_answers_on_answer_id"
  add_index "pair_answers", ["pair_id"], name: "index_pair_answers_on_pair_id"
  add_index "pair_answers", ["sheet_id"], name: "index_pair_answers_on_sheet_id"

  create_table "pairs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_sheets", force: :cascade do |t|
    t.string   "title"
    t.integer  "digital_fingerprint_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "quiz_sheets", ["digital_fingerprint_id"], name: "index_quiz_sheets_on_digital_fingerprint_id"

  create_table "statements", force: :cascade do |t|
    t.string   "option"
    t.string   "title"
    t.integer  "pair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statements", ["pair_id"], name: "index_statements_on_pair_id"

end
