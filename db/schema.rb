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

ActiveRecord::Schema.define(version: 20180509213221) do

  create_table "chapters", force: :cascade do |t|
    t.integer  "number"
    t.string   "title"
    t.text     "desc"
    t.string   "run_time"
    t.text     "topics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_chapters_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.boolean  "avail"
    t.datetime "avail_date"
    t.string   "lg_thumb"
    t.string   "sm_thumb"
    t.string   "workbook"
    t.string   "cm_intro_title"
    t.text     "cm_intro_desc"
    t.string   "cm_less_logo"
    t.string   "cm_less_title"
    t.string   "cm_less_desc"
    t.string   "cm_excl_logo"
    t.string   "cm_excl_title"
    t.string   "cm_excl_desc"
    t.string   "cm_info_img"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_instructors_on_course_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer  "recommender_id"
    t.integer  "recommendee_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "all_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
