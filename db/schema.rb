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

ActiveRecord::Schema.define(version: 20170206162313) do

  create_table "accessories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "manufacturer"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "pattern_id"
    t.integer  "strand_id"
    t.integer  "fabric_id"
    t.integer  "kit_id"
    t.integer  "accessory_id"
    t.integer  "quantity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fabrics", force: :cascade do |t|
    t.string   "title"
    t.string   "manufacturer"
    t.string   "color"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "size"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "kits", force: :cascade do |t|
    t.string   "title"
    t.string   "containment"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "patterns", force: :cascade do |t|
    t.string   "title_en"
    t.string   "title_ru"
    t.text     "description_en"
    t.text     "description_ru"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "designer"
    t.string   "size"
    t.string   "category"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "category"
    t.string   "subcategory"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schemes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "designer"
    t.string   "size"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "strands", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price_usd"
    t.decimal  "price_rub"
    t.string   "length"
    t.string   "color"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "about"
    t.date     "birthday"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
