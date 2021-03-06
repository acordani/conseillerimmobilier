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

ActiveRecord::Schema.define(version: 20171207163405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "competences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "currently_work"
    t.string   "start_month"
    t.string   "start_year"
    t.string   "end_month"
    t.string   "end_year"
    t.string   "city"
    t.index ["user_id"], name: "index_experiences_on_user_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "price"
    t.string   "title"
    t.text     "description"
    t.string   "city"
    t.boolean  "active"
    t.integer  "bedroom"
    t.string   "class_energy"
    t.string   "zip_code"
    t.string   "living"
    t.string   "number_class_energy"
    t.string   "gaz_serre"
    t.string   "number_gaz_serre"
    t.string   "taxe"
    t.string   "exposition"
    t.string   "heating"
    t.string   "phase"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "construction"
  end

  create_table "user_competences", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "competence_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["competence_id"], name: "index_user_competences_on_competence_id", using: :btree
    t.index ["user_id"], name: "index_user_competences_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "picture"
    t.boolean  "is_realestate"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.text     "description"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "experiences", "users"
  add_foreign_key "user_competences", "competences"
  add_foreign_key "user_competences", "users"
end
