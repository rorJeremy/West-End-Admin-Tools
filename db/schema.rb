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

ActiveRecord::Schema.define(version: 20160819230849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "typeforms", force: :cascade do |t|
    t.string   "token",        null: false
    t.string   "which_survey", null: false
    t.integer  "lock_version"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.integer  "lock_version"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "typeform_id"
    t.binary   "picture"
    t.index ["typeform_id"], name: "index_visitors_on_typeform_id", using: :btree
  end

  add_foreign_key "visitors", "typeforms"
end
