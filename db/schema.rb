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

ActiveRecord::Schema.define(version: 20170926205431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.text     "name",       null: false
    t.text     "repo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_apps_on_team_id", using: :btree
  end

  create_table "payload_bodies", force: :cascade do |t|
    t.integer  "payload_id", null: false
    t.text     "key",        null: false
    t.text     "value",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payload_id"], name: "index_payload_bodies_on_payload_id", using: :btree
  end

  create_table "payloads", force: :cascade do |t|
    t.integer  "app_id",                 null: false
    t.text     "name",                   null: false
    t.text     "description"
    t.text     "request_url",            null: false
    t.integer  "request_method_id",      null: false
    t.integer  "request_environment_id", null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["app_id"], name: "index_payloads_on_app_id", using: :btree
    t.index ["request_environment_id"], name: "index_payloads_on_request_environment_id", using: :btree
    t.index ["request_method_id"], name: "index_payloads_on_request_method_id", using: :btree
  end

  create_table "request_environments", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_methods", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apps", "teams"
  add_foreign_key "payload_bodies", "payloads"
  add_foreign_key "payloads", "apps"
  add_foreign_key "payloads", "request_environments"
  add_foreign_key "payloads", "request_methods"
end
