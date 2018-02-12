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

ActiveRecord::Schema.define(version: 20170918090126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expertises", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profil_expertises", force: :cascade do |t|
    t.integer  "profil_id"
    t.integer  "expertise_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["expertise_id"], name: "index_profil_expertises_on_expertise_id", using: :btree
    t.index ["profil_id"], name: "index_profil_expertises_on_profil_id", using: :btree
  end

  create_table "profils", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "mail"
    t.string   "organisation"
    t.string   "job"
    t.string   "expertise"
    t.text     "interest"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "profil_expertises", "expertises"
  add_foreign_key "profil_expertises", "profils"
end
