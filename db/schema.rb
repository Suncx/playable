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

ActiveRecord::Schema.define(:version => 20111211030403) do

  create_table "events", :force => true do |t|
    t.integer  "user_id"
    t.datetime "checkin_at"
    t.datetime "checkout_at"
    t.text     "description"
    t.text     "feedback"
    t.string   "type_identifier"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["checkin_at"], :name => "index_events_on_checkin_at"
  add_index "events", ["checkout_at"], :name => "index_events_on_checkout_at"
  add_index "events", ["state"], :name => "index_events_on_state"
  add_index "events", ["type_identifier"], :name => "index_events_on_type_identifier"
  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["code"], :name => "index_groups_on_code"

  create_table "groups_roles", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "role_id"
  end

  add_index "groups_roles", ["group_id"], :name => "index_groups_roles_on_group_id"
  add_index "groups_roles", ["role_id"], :name => "index_groups_roles_on_role_id"

  create_table "groups_users", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  add_index "groups_users", ["group_id"], :name => "index_groups_users_on_group_id"
  add_index "groups_users", ["user_id"], :name => "index_groups_users_on_user_id"

  create_table "marks", :force => true do |t|
    t.integer  "user_id"
    t.datetime "checkin_at"
    t.datetime "checkout_at"
    t.text     "description"
    t.text     "feedback"
    t.string   "type_identifier"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "marks", ["checkin_at"], :name => "index_marks_on_checkin_at"
  add_index "marks", ["checkout_at"], :name => "index_marks_on_checkout_at"
  add_index "marks", ["state"], :name => "index_marks_on_state"
  add_index "marks", ["type_identifier"], :name => "index_marks_on_type_identifier"
  add_index "marks", ["user_id"], :name => "index_marks_on_user_id"

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "permalink"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["permalink"], :name => "index_posts_on_permalink"
  add_index "posts", ["title"], :name => "index_posts_on_title"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "reports", :force => true do |t|
    t.integer  "user_id"
    t.text     "plan"
    t.text     "goal"
    t.text     "content"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "current_date"
  end

  add_index "reports", ["user_id"], :name => "index_reports_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["code"], :name => "index_roles_on_code"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "phone"
    t.datetime "birthdate"
    t.string   "gender"
    t.text     "bio"
    t.boolean  "is_admin",                              :default => false
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["is_admin"], :name => "index_users_on_is_admin"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
