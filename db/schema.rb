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

ActiveRecord::Schema.define(version: 20180716190520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_sections", force: :cascade do |t|
    t.text     "title",          null: false
    t.text     "title_vn"
    t.text     "description",    null: false
    t.text     "description_vn"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "image_url"
    t.text     "image_url2"
    t.text     "image_url3"
    t.index ["user_id"], name: "index_about_sections_on_user_id", unique: true, using: :btree
  end

  create_table "awards", force: :cascade do |t|
    t.text     "title",            null: false
    t.text     "title_vn"
    t.text     "description",      null: false
    t.text     "description_vn"
    t.integer  "about_section_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "image_url"
    t.index ["about_section_id"], name: "index_awards_on_about_section_id", using: :btree
  end

  create_table "chef_categories", force: :cascade do |t|
    t.text     "cat_type",        null: false
    t.text     "cat_type_vn"
    t.text     "description",     null: false
    t.text     "description_vn"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "chef_section_id", null: false
    t.text     "image_url"
    t.index ["chef_section_id"], name: "index_chef_categories_on_chef_section_id", using: :btree
  end

  create_table "chef_sections", force: :cascade do |t|
    t.text     "title",          null: false
    t.text     "title_vn"
    t.text     "description",    null: false
    t.text     "description_vn"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_chef_sections_on_user_id", unique: true, using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "title"
    t.text     "title_vn"
    t.text     "description"
    t.text     "description_vn"
    t.text     "company_name_vn"
    t.integer  "tel"
    t.integer  "hotline"
    t.integer  "fax"
    t.text     "addess"
    t.text     "fb_link"
    t.integer  "user_id",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "company_name"
    t.index ["user_id"], name: "index_contacts_on_user_id", unique: true, using: :btree
  end

  create_table "dishes", force: :cascade do |t|
    t.text     "title",            null: false
    t.text     "title_vn"
    t.text     "youtube_link"
    t.text     "details"
    t.text     "details_vn"
    t.integer  "chef_category_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "image_url"
    t.index ["chef_category_id"], name: "index_dishes_on_chef_category_id", using: :btree
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
    t.text     "title_vn"
    t.text     "description",      null: false
    t.text     "description_vn"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "about_section_id", null: false
    t.index ["about_section_id"], name: "index_histories_on_about_section_id", unique: true, using: :btree
  end

  create_table "inquiries", force: :cascade do |t|
    t.text     "first_name",                 null: false
    t.text     "last_name",                  null: false
    t.text     "email",                      null: false
    t.text     "message"
    t.boolean  "seen",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["email"], name: "index_inquiries_on_email", unique: true, using: :btree
  end

  create_table "news_posts", force: :cascade do |t|
    t.text     "title",           null: false
    t.text     "title_vn"
    t.text     "description",     null: false
    t.text     "description_vn"
    t.date     "news_date"
    t.integer  "news_section_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "image_url"
    t.index ["news_section_id"], name: "index_news_posts_on_news_section_id", using: :btree
  end

  create_table "news_sections", force: :cascade do |t|
    t.text     "title",          null: false
    t.text     "title_vn"
    t.text     "description",    null: false
    t.text     "description_vn"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "image_url"
    t.index ["user_id"], name: "index_news_sections_on_user_id", unique: true, using: :btree
  end

  create_table "product_categories", force: :cascade do |t|
    t.text     "cat_type",           null: false
    t.text     "cat_type_vn"
    t.text     "description",        null: false
    t.text     "description_vn"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "product_section_id", null: false
    t.index ["product_section_id"], name: "index_product_categories_on_product_section_id", using: :btree
  end

  create_table "product_sections", force: :cascade do |t|
    t.text     "title",          null: false
    t.text     "title_vn"
    t.text     "description",    null: false
    t.text     "description_vn"
    t.integer  "user_id",        null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_product_sections_on_user_id", unique: true, using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.text     "title",               null: false
    t.text     "title_vn"
    t.text     "details"
    t.text     "details_vn"
    t.integer  "volume"
    t.boolean  "metric"
    t.integer  "product_category_id", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "image_url"
    t.text     "image_url2"
    t.text     "image_url3"
    t.text     "image_url4"
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
    t.text     "title_vn"
    t.text     "description",      null: false
    t.text     "description_vn"
    t.integer  "about_section_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["about_section_id"], name: "index_why_us_on_about_section_id", unique: true, using: :btree
  end

  add_foreign_key "about_sections", "users"
  add_foreign_key "awards", "about_sections"
  add_foreign_key "chef_categories", "chef_sections"
  add_foreign_key "chef_sections", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "dishes", "chef_categories"
  add_foreign_key "examples", "users"
  add_foreign_key "histories", "about_sections"
  add_foreign_key "news_posts", "news_sections"
  add_foreign_key "news_sections", "users"
  add_foreign_key "product_categories", "product_sections"
  add_foreign_key "product_sections", "users"
  add_foreign_key "products", "product_categories"
  add_foreign_key "why_us", "about_sections"
end
