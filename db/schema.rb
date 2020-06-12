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

ActiveRecord::Schema.define(version: 2020_06_12_175733) do

  create_table "action_steps", force: :cascade do |t|
    t.string "short_name"
    t.text "long_text"
    t.datetime "date"
    t.integer "move_id"
    t.boolean "is_assigned"
    t.boolean "is_completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacherId"
    t.integer "coachId"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "teacherId"
    t.integer "coachId"
    t.datetime "date"
    t.integer "observation_id"
    t.text "praise"
    t.text "quick_hits"
    t.integer "action_step_id"
    t.text "see_it"
    t.text "name_it"
    t.text "do_it"
    t.boolean "is_released"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "phase"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.integer "teacherId"
    t.integer "coachId"
    t.datetime "date"
    t.string "move"
    t.integer "score"
    t.text "notes"
    t.text "comments"
    t.boolean "is_released"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_coaches", force: :cascade do |t|
    t.datetime "join_date"
    t.string "organization"
    t.string "courses"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coachId"
    t.integer "teacherId"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "teacher_name"
    t.boolean "is_teacher"
    t.boolean "is_coach"
    t.boolean "is_leader"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
