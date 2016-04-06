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

ActiveRecord::Schema.define(version: 20160406032351) do

  create_table "courses", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "name"
    t.text     "description"
    t.decimal  "units"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "number"
    t.integer  "school_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "reviewer_id"
    t.integer  "school_id"
  end

  create_table "klasses", force: :cascade do |t|
    t.decimal  "year"
    t.decimal  "enrollment_size"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "semester"
    t.integer  "course_id"
    t.integer  "professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professorships", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "professor_id"
    t.integer  "school_id"
  end

  create_table "reviewers", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "major"
    t.decimal  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "overall_rating"
    t.integer  "helpfulness_rating"
    t.integer  "workload_rating"
    t.integer  "professor_rating"
    t.integer  "reviewer_id"
    t.integer  "klass_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
