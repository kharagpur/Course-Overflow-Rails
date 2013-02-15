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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120328080741) do

  create_table "analogies", :force => true do |t|
    t.integer  "rating_down"
    t.integer  "rating_up"
    t.integer  "user_id"
    t.text     "description"
    t.integer  "content_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "analogies", ["content_id"], :name => "index_analogies_on_content_id"
  add_index "analogies", ["user_id"], :name => "index_analogies_on_user_id"

  create_table "contents", :force => true do |t|
    t.string   "title"
    t.integer  "course_id"
    t.text     "content_box"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "contents", ["course_id"], :name => "index_contents_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "courses", ["department_id"], :name => "index_courses_on_department_id"

  create_table "definitions", :force => true do |t|
    t.integer  "content_id"
    t.text     "description"
    t.integer  "rating_up"
    t.integer  "rating_down"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "definitions", ["content_id"], :name => "index_definitions_on_content_id"
  add_index "definitions", ["user_id"], :name => "index_definitions_on_user_id"

  create_table "departments", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.text     "title"
    t.text     "description"
    t.integer  "views"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "major"
    t.string   "salt"
    t.string   "password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
  end

  create_table "videos", :force => true do |t|
    t.integer  "rating_down"
    t.integer  "rating_up"
    t.string   "title"
    t.integer  "content_id"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "videos", ["content_id"], :name => "index_videos_on_content_id"
  add_index "videos", ["user_id"], :name => "index_videos_on_user_id"

end
