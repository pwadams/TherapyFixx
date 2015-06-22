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

ActiveRecord::Schema.define(version: 20150622195203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "anxiety_scales", force: :cascade do |t|
    t.integer "patient_id"
    t.date    "date"
    t.integer "worrying"
    t.integer "feeling_afraid"
    t.integer "feeling_tense"
    t.integer "difficulty_sleeping"
  end

  create_table "blue_scales", force: :cascade do |t|
    t.integer "sadness"
    t.integer "emptiness"
    t.integer "lack_of_enjoyment"
    t.integer "fatigue"
    t.integer "anger"
    t.integer "overall"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "therapist_id"
    t.integer  "entry_id"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer  "journal_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "date"
  end

  create_table "journals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.integer  "age"
    t.string   "therapist_code"
    t.integer  "therapist_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "stress_logs", force: :cascade do |t|
    t.integer "patient_id"
    t.date    "date"
    t.text    "situation"
    t.boolean "afraid"
    t.boolean "angry"
    t.boolean "annoyed"
    t.boolean "ashamed"
    t.boolean "anxious"
    t.boolean "bored"
    t.boolean "confused"
    t.boolean "depressed"
    t.boolean "disappointed"
    t.boolean "down"
    t.boolean "embarrassed"
    t.boolean "frustrated"
    t.boolean "guilty"
    t.boolean "irritated"
    t.boolean "lonely"
    t.boolean "sad"
    t.boolean "jealous"
    t.boolean "tense"
    t.string  "custom"
    t.text    "thought1"
    t.text    "thought2"
    t.text    "thought3"
    t.text    "thought4"
    t.text    "thought5"
  end

  create_table "therapists", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.boolean  "admin"
    t.string   "therapist_code"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
