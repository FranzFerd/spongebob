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

ActiveRecord::Schema.define(:version => 20130619205420) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "website"
    t.string   "category"
    t.string   "decision_maker_check"
    t.string   "terms_agreement_check"
    t.string   "date"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "zip_code"
    t.string   "city"
    t.string   "address"
    t.string   "attendees"
    t.string   "audience"
    t.string   "sponsors_known"
    t.string   "target_group_jobs"
    t.string   "target_group_education"
    t.string   "target_group_age"
    t.string   "sponsorship_deadline"
    t.string   "sponsorships_taken"
    t.string   "sponsorship_price"
    t.string   "sponsorship_level"
    t.string   "sponsorship_offer"
    t.string   "images"
    t.string   "videos"
    t.string   "speakers"
    t.string   "certificates"
    t.string   "contact_name"
    t.string   "contact_method"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.string   "tax_deductible"
    t.integer  "user_id"
    t.integer  "contact_first_name"
    t.integer  "contact_linkedin"
    t.integer  "contact_fax"
    t.integer  "facebook"
    t.integer  "twitter"
    t.integer  "contact_mobile"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "listings", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "first_name"
    t.string   "company"
    t.string   "website"
    t.string   "terms"
    t.string   "avator"
    t.string   "phone"
    t.string   "city"
    t.string   "fax"
    t.string   "aboutus"
    t.string   "offer"
    t.string   "zip_code"
    t.string   "employees"
    t.string   "contact_name"
    t.string   "contact_firstname"
    t.string   "contact_mail"
    t.string   "contact_fax"
    t.string   "contact_phone"
    t.string   "contact_mobile"
    t.string   "sponsor_check"
    t.string   "payment_received"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
