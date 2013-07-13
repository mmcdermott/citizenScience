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

ActiveRecord::Schema.define(:version => 20130713231541) do

  create_table "classification_data", :force => true do |t|
    t.integer  "question_id",                    :null => false
    t.integer  "user_id",                        :null => false
    t.integer  "value"
    t.boolean  "anonymized"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "public",      :default => false
  end

  add_index "classification_data", ["question_id"], :name => "index_classification_data_on_question_id"
  add_index "classification_data", ["user_id"], :name => "index_classification_data_on_user_id"

  create_table "metrics", :force => true do |t|
    t.integer  "creator_id",                    :null => false
    t.integer  "frequency",   :default => 1
    t.text     "description"
    t.boolean  "published",   :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "name"
  end

  add_index "metrics", ["creator_id"], :name => "index_tests_on_creator_id"

  create_table "numeric_data", :force => true do |t|
    t.integer  "question_id",                    :null => false
    t.integer  "user_id",                        :null => false
    t.float    "value"
    t.boolean  "anonymized"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "public",      :default => false
  end

  add_index "numeric_data", ["question_id"], :name => "index_numeric_data_on_question_id"
  add_index "numeric_data", ["user_id"], :name => "index_numeric_data_on_user_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "nickname"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "questions", :force => true do |t|
    t.integer  "metric_id",                  :null => false
    t.text     "question"
    t.integer  "answer_type", :default => 1
    t.string   "input_label"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "questions", ["metric_id"], :name => "index_questions_on_metric_id"

  create_table "registrations", :force => true do |t|
    t.integer  "metric_id",                          :null => false
    t.integer  "user_id",                            :null => false
    t.integer  "frequency",       :default => 1
    t.date     "expiration_date"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "public",          :default => false
  end

  add_index "registrations", ["metric_id"], :name => "index_registrations_on_metric_id"
  add_index "registrations", ["user_id"], :name => "index_registrations_on_user_id"

  create_table "string_data", :force => true do |t|
    t.string   "value"
    t.integer  "question_id",                    :null => false
    t.integer  "user_id",                        :null => false
    t.boolean  "anonymized"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "public",      :default => false
  end

  add_index "string_data", ["question_id"], :name => "index_string_data_on_question_id"
  add_index "string_data", ["user_id"], :name => "index_string_data_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
