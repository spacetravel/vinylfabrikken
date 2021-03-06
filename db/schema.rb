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

ActiveRecord::Schema.define(:version => 20130729150237) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "album_media", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.string   "address"
    t.text     "description"
  end

  create_table "articles", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.text     "ingress"
    t.text     "body"
  end

  create_table "audio_masters", :force => true do |t|
    t.string   "sample_rate"
    t.string   "resolution"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "album_medium_id"
    t.integer  "order_id"
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.decimal  "total_sum",  :precision => 8, :scale => 2
  end

  create_table "cover_media", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
    t.string   "address"
    t.text     "description"
  end

  create_table "covers", :force => true do |t|
    t.string   "inner_sleeve_type"
    t.string   "sleeve_type"
    t.integer  "order_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "thickness"
    t.text     "comments"
    t.integer  "inner_sleeve_pages"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "delivery_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.text     "comments"
    t.string   "payment_type"
    t.text     "payment_comment"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "payment_method_id"
    t.integer  "invoice_id"
  end

  create_table "delivery_methods", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "order_id"
  end

  create_table "faq_categories", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "faqs", :force => true do |t|
    t.text     "question"
    t.text     "answer"
    t.boolean  "published"
    t.integer  "faq_category_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "featurettes", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "text"
    t.string   "link"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "graverings", :force => true do |t|
    t.string   "side_a_rpm"
    t.string   "side_b_rpm"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
    t.text     "comments"
  end

  create_table "info_texts", :force => true do |t|
    t.string   "keyword"
    t.text     "desc"
    t.text     "short_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.string   "invoice_number"
    t.datetime "invoice_date"
    t.datetime "invoice_deadline"
    t.decimal  "total_sum"
    t.integer  "status"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
  end

  create_table "labels", :force => true do |t|
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "label_type"
    t.integer  "quantity"
    t.text     "comments"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "invoice_id"
  end

  create_table "matrices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
    t.integer  "quantity"
    t.text     "comments"
  end

  create_table "order_lines", :force => true do |t|
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "order_id"
    t.integer  "quantity"
    t.integer  "status",     :default => 0
  end

  create_table "order_statuses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "color"
    t.integer  "owner"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "order_id"
    t.string   "keyword"
  end

  create_table "orders", :force => true do |t|
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
    t.integer  "status",                                           :default => 0
    t.integer  "user_id"
    t.integer  "artwork_medium_id"
    t.string   "payment_type"
    t.string   "order_number"
    t.datetime "order_date"
    t.string   "title"
    t.string   "artist"
    t.integer  "delivery_method_id"
    t.integer  "number_of_records"
    t.integer  "order_status_id"
    t.text     "comments"
    t.string   "record_size"
    t.integer  "priority"
    t.string   "rpm"
    t.integer  "quantity",                                         :default => 300
    t.string   "catalogue_number"
    t.integer  "invoice_id"
    t.decimal  "total_price",        :precision => 8, :scale => 2
    t.integer  "package_id"
  end

  create_table "packages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "quantity"
  end

  create_table "payment_methods", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.text     "desc"
  end

  create_table "plugs", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "title"
    t.text     "body"
    t.string   "link"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pressings", :force => true do |t|
    t.string   "color"
    t.integer  "weight"
    t.boolean  "repress"
    t.string   "holesize"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "order_id"
    t.text     "comments"
  end

  create_table "price_categories", :force => true do |t|
    t.string   "name"
    t.string   "keyword"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prices", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.decimal  "price",             :precision => 8, :scale => 2
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "keyword1"
    t.string   "keyword2"
    t.integer  "price_category_id"
    t.string   "keyword3"
  end

  create_table "rich_rich_files", :force => true do |t|
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        :default => "file"
  end

  create_table "s3_multipart_uploads", :force => true do |t|
    t.string   "location"
    t.string   "upload_id"
    t.string   "key"
    t.string   "name"
    t.string   "uploader"
    t.integer  "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sides", :force => true do |t|
    t.integer  "side_num"
    t.integer  "gravering_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sliders", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "button_text"
    t.string   "link"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "active"
  end

  create_table "testpresses", :force => true do |t|
    t.integer  "order_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "comments"
  end

  create_table "tracks", :force => true do |t|
    t.integer  "side_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "duration_mins"
    t.integer  "duration_secs"
    t.integer  "track_num"
    t.string   "name"
    t.string   "uploader"
    t.string   "file_url"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "country_code"
    t.boolean  "is_editor"
    t.string   "profile_image"
    t.string   "zipcode"
    t.string   "city"
    t.boolean  "faktura_avtale"
    t.boolean  "employee",               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "link"
    t.text     "desc"
    t.text     "speciality"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "uploader"
  end

end
