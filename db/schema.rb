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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130809000719) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "longitude"
    t.float    "radius"
  end

  create_table "periods", :force => true do |t|
    t.date     "from_date"
    t.date     "end_date"
    t.string   "probability"
    t.string   "impact"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "risk_id"
  end

  create_table "risks", :force => true do |t|
    t.integer  "location_id"
    t.integer  "type_id"
    t.text     "description"
    t.time     "time_from"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "period_id"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
