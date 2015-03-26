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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150131152508) do
=======
ActiveRecord::Schema.define(version: 20150128183416) do
>>>>>>> 346ba98d3343dfc76599e18d8f636d0ca9fc9489

  create_table "departments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musics", force: true do |t|
    t.string   "title"
    t.text     "chord"
    t.text     "lyric"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slide"
  end

  create_table "patrimonies", force: true do |t|
    t.string   "item"
    t.float    "price"
    t.date     "date_of_entry"
    t.date     "date_of_exit"
    t.integer  "department_id"
    t.boolean  "defect"
    t.text     "more_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patrimony_item_category_id"
  end

  add_index "patrimonies", ["department_id"], name: "index_patrimonies_on_department_id", using: :btree
  add_index "patrimonies", ["patrimony_item_category_id"], name: "index_patrimonies_on_patrimony_item_category_id", using: :btree

  create_table "patrimony_item_categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repertoires", force: true do |t|
    t.integer  "order"
    t.integer  "music_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "repertoires", ["music_id"], name: "index_repertoires_on_music_id", using: :btree

  create_table "user_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_status_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
<<<<<<< HEAD
  add_index "users", ["user_status_id"], name: "index_users_on_user_status_id", using: :btree
=======
>>>>>>> 346ba98d3343dfc76599e18d8f636d0ca9fc9489

end
