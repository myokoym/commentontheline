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

ActiveRecord::Schema.define(version: 20150414155114) do

  create_table "comments", force: :cascade do |t|
    t.integer  "line_id"
    t.integer  "user_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["line_id"], name: "index_comments_on_line_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "text"
  end

  add_index "documents", ["user_id"], name: "index_documents_on_user_id"

  create_table "lines", force: :cascade do |t|
    t.integer  "document_id"
    t.text     "text"
    t.integer  "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lines", ["document_id"], name: "index_lines_on_document_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
