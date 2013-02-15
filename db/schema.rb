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

ActiveRecord::Schema.define(:version => 20120412053142) do

  create_table "analogies", :force => true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_up",   :default => 0, :null => false
    t.integer  "rating_down", :default => 0, :null => false
    t.integer  "topic_id"
  end

  add_index "analogies", ["topic_id"], :name => "index_analogies_on_topic_id"

  create_table "analogy_votes", :force => true do |t|
    t.integer  "analogy_id"
    t.integer  "user_id"
    t.boolean  "vote_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "answers", :force => true do |t|
    t.integer  "user_id"
    t.string   "response"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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

  create_table "definition_votes", :force => true do |t|
    t.integer  "definition_id"
    t.integer  "user_id"
    t.boolean  "vote_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "definitions", :force => true do |t|
    t.integer  "content_id"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_up",   :default => 0, :null => false
    t.integer  "rating_down", :default => 0, :null => false
    t.integer  "topic_id"
  end

  add_index "definitions", ["topic_id"], :name => "index_definitions_on_topic_id"

  create_table "departments", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "description"
    t.string   "content_type"
    t.string   "filename"
    t.binary   "binary_data"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "topic_id"
    t.integer  "user_id"
  end

  add_index "photos", ["topic_id"], :name => "index_photos_on_topic_id"
  add_index "photos", ["user_id"], :name => "index_photos_on_user_id"

  create_table "questions", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.text     "title"
    t.text     "description"
    t.integer  "views"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "title"
    t.integer  "analogy_id"
    t.integer  "photo_id"
    t.integer  "definition_id"
    t.integer  "video_id"
    t.integer  "course_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "topics", ["analogy_id"], :name => "index_topics_on_analogy_id"
  add_index "topics", ["course_id"], :name => "index_topics_on_course_id"
  add_index "topics", ["definition_id"], :name => "index_topics_on_definition_id"
  add_index "topics", ["photo_id"], :name => "index_topics_on_photo_id"
  add_index "topics", ["video_id"], :name => "index_topics_on_video_id"

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

  create_table "video_votes", :force => true do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.boolean  "vote_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.integer  "content_id"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating_up",   :default => 0, :null => false
    t.integer  "rating_down", :default => 0, :null => false
    t.integer  "topic_id"
  end

  add_index "videos", ["topic_id"], :name => "index_videos_on_topic_id"

  create_table "votes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "answer_id"
    t.boolean  "vote_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "votes", ["user_id", "answer_id"], :name => "index_votes_on_user_id_and_answer_id", :unique => true

end
