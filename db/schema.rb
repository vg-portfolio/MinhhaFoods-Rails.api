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

ActiveRecord::Schema.define(version: 20170911224326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_sections", force: :cascade do |t|
    t.text     "title",         null: false
    t.text     "titleVn"
    t.text     "description",   null: false
    t.text     "descriptionVn"
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_about_sections_on_user_id", unique: true, using: :btree
  end

  create_table "awards", force: :cascade do |t|
    t.text     "title",            null: false
    t.text     "titleVn"
    t.text     "description",      null: false
    t.text     "descriptionVn"
    t.integer  "about_section_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["about_section_id"], name: "index_awards_on_about_section_id", using: :btree
  end

  create_table "descriptions", force: :cascade do |t|
    t.text     "body"
    t.string   "describable_type"
    t.integer  "describable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["describable_type", "describable_id"], name: "index_descriptions_on_describable_type_and_describable_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "histories", force: :cascade do |t|
    t.text     "title",            null: false
    t.text     "titleVn"
    t.text     "description",      null: false
    t.text     "descriptionVn"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "about_section_id", null: false
    t.index ["about_section_id"], name: "index_histories_on_about_section_id", unique: true, using: :btree
  end

  create_table "news_posts", force: :cascade do |t|
    t.text     "title",           null: false
    t.text     "titleVn"
    t.text     "description",     null: false
    t.text     "descriptionVn"
    t.date     "newsDate"
    t.integer  "news_section_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["news_section_id"], name: "index_news_posts_on_news_section_id", using: :btree
  end

  create_table "news_sections", force: :cascade do |t|
    t.text     "title",         null: false
    t.text     "titleVn"
    t.text     "description",   null: false
    t.text     "descriptionVn"
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_news_sections_on_user_id", unique: true, using: :btree
  end

  create_table "product_categories", force: :cascade do |t|
    t.text     "catType",            null: false
    t.text     "catTypeVn"
    t.text     "description",        null: false
    t.text     "descriptionVn"
    t.integer  "product_section_id", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["product_section_id"], name: "index_product_categories_on_product_section_id", using: :btree
  end

  create_table "product_sections", force: :cascade do |t|
    t.text     "title",         null: false
    t.text     "titleVn"
    t.text     "description",   null: false
    t.text     "descriptionVn"
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_product_sections_on_user_id", unique: true, using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.text     "title",               null: false
    t.text     "titleVn"
    t.integer  "volume"
    t.boolean  "metric"
    t.integer  "product_category_id", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  create_table "why_us", force: :cascade do |t|
    t.text     "title",            null: false
    t.text     "titleVn"
    t.text     "description",      null: false
    t.text     "descriptionVn"
    t.integer  "about_section_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["about_section_id"], name: "index_why_us_on_about_section_id", unique: true, using: :btree
  end

  add_foreign_key "about_sections", "users"
  add_foreign_key "awards", "about_sections"
  add_foreign_key "examples", "users"
  add_foreign_key "histories", "about_sections"
  add_foreign_key "news_posts", "news_sections"
  add_foreign_key "news_sections", "users"
  add_foreign_key "product_categories", "product_sections"
  add_foreign_key "product_sections", "users"
  add_foreign_key "products", "product_categories"
  add_foreign_key "why_us", "about_sections"
end
