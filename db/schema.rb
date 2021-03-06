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

ActiveRecord::Schema.define(version: 20180308110228) do

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                        null: false
    t.string   "author"
    t.integer  "price",                        null: false
    t.integer  "category_id"
    t.integer  "count",        default: 1,     null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "image"
    t.boolean  "is_published", default: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                  null: false
    t.integer  "book_id",                  null: false
    t.integer  "count",        default: 1, null: false
    t.integer  "is_processed", default: 0, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "faculty",         null: false
    t.integer  "department",      null: false
    t.integer  "year",            null: false
    t.string   "password_digest"
    t.string   "tw_name"
  end

end
