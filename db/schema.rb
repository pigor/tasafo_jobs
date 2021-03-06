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

ActiveRecord::Schema.define(version: 20140824014045) do

  create_table "job_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "user_id",         null: false
    t.integer  "category_id",     null: false
    t.string   "title",           null: false
    t.string   "company_name",    null: false
    t.string   "site_url"
    t.string   "location"
    t.text     "description",     null: false
    t.text     "contact_message", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "resumes", force: true do |t|
    t.integer  "user_id",                         null: false
    t.integer  "category_id",                     null: false
    t.string   "name",                            null: false
    t.string   "title",                           null: false
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "google_plus_url"
    t.string   "linked_in_url"
    t.string   "phone"
    t.string   "site_url"
    t.string   "contact_email"
    t.string   "location"
    t.boolean  "available",       default: false
    t.boolean  "listed",          default: false
    t.text     "description",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resumes", ["category_id"], name: "index_resumes_on_category_id", using: :btree
  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id", using: :btree

  create_table "settings", force: true do |t|
    t.integer  "user_id"
    t.boolean  "new_jobs",    default: true
    t.boolean  "new_resumes", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["user_id"], name: "index_settings_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
