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

ActiveRecord::Schema.define(version: 20141111142035) do

  create_table "academies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centre_intakes", force: true do |t|
    t.integer  "centre_id"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centre_timeslots", force: true do |t|
    t.integer  "centre_id"
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "academy_id"
  end

  create_table "intakes", force: true do |t|
    t.string   "name"
    t.integer  "programme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_date"
    t.integer  "centre_id"
    t.integer  "user_id"
  end

  create_table "klass_centres", force: true do |t|
    t.integer  "klass_id"
    t.integer  "centre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_dates", force: true do |t|
    t.integer  "klass_id"
    t.integer  "date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_programmes", force: true do |t|
    t.integer  "klass_id"
    t.integer  "programme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_rooms", force: true do |t|
    t.integer  "klass_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_timeslots", force: true do |t|
    t.integer  "klass_id"
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klass_topics", force: true do |t|
    t.integer  "klass_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klasses", force: true do |t|
    t.string   "name"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programme_intakes", force: true do |t|
    t.integer  "intake_id"
    t.integer  "programme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programme_timeslots", force: true do |t|
  end

  create_table "programmes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "room_timeslots", force: true do |t|
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "centre_id"
  end

  create_table "timeslots", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_intakes", force: true do |t|
    t.integer  "topic_id"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_timeslots", force: true do |t|
    t.integer  "topic_id"
    t.integer  "timeslot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programme_id"
    t.string   "status"
    t.integer  "number"
    t.integer  "user_id"
  end

  create_table "user_categories", force: true do |t|
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_intakes", force: true do |t|
    t.integer  "user_id"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_klasses", force: true do |t|
    t.integer  "klass_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_programmes", force: true do |t|
    t.integer  "user_id"
    t.integer  "programme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_timeslots", force: true do |t|
  end

  create_table "user_topics", force: true do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
