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

ActiveRecord::Schema.define(version: 20150818202008) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "guest_nights", force: :cascade do |t|
    t.integer  "reservation_id", limit: 4
    t.integer  "guests",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.date     "date"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "spa_id",       limit: 4
    t.date     "arrival_date"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "first_name",   limit: 255
    t.string   "email",        limit: 255
    t.string   "status",       limit: 255, default: "pending"
    t.integer  "guests",       limit: 4
    t.integer  "nights",       limit: 4
  end

  create_table "retreats", force: :cascade do |t|
    t.date     "arrival_date"
    t.integer  "spa_id",          limit: 4
    t.integer  "group_leader_id", limit: 4
    t.string   "name",            limit: 255
    t.integer  "registered",      limit: 4
    t.integer  "confirmed",       limit: 4
    t.integer  "group_rates_at",  limit: 4,     default: 8
    t.integer  "comp_stay_at",    limit: 4,     default: 12
    t.string   "facebook_url",    limit: 255
    t.string   "image",           limit: 255
    t.string   "facebook_image",  limit: 255
    t.text     "description",     limit: 65535
    t.string   "paypal",          limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "spas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
