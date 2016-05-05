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

ActiveRecord::Schema.define(version: 20160411142700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "cell_number"
    t.integer  "guests_id"
    t.boolean  "admin",           default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "primary_addresses", force: :cascade do |t|
    t.integer  "guests_id"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "primary_addresses", ["guests_id"], name: "index_primary_addresses_on_guests_id", using: :btree

  create_table "secondary_addresses", force: :cascade do |t|
    t.integer  "guests_id"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.string   "country"
    t.datetime "checkin"
    t.datetime "checkout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "secondary_addresses", ["guests_id"], name: "index_secondary_addresses_on_guests_id", using: :btree

end
