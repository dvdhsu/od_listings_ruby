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

ActiveRecord::Schema.define(version: 20151210011232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", primary_key: "od_id", force: :cascade do |t|
    t.string   "street"
    t.string   "status"
    t.integer  "price"
    t.integer  "bathrooms"
    t.integer  "bedrooms"
    t.integer  "sq_ft"
    t.decimal  "lat",        precision: 23, scale: 20
    t.decimal  "lng",        precision: 23, scale: 20
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "listings", ["bathrooms"], name: "index_listings_on_bathrooms", using: :btree
  add_index "listings", ["bedrooms"], name: "index_listings_on_bedrooms", using: :btree
  add_index "listings", ["lat"], name: "index_listings_on_lat", using: :btree
  add_index "listings", ["lng"], name: "index_listings_on_lng", using: :btree
  add_index "listings", ["price"], name: "index_listings_on_price", using: :btree
  add_index "listings", ["status"], name: "index_listings_on_status", using: :btree

end
