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

ActiveRecord::Schema.define(:version => 20101014140237) do

  create_table "article_categories", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.text     "description"
    t.text     "params"
    t.integer  "position"
    t.integer  "article_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "salutation"
    t.string   "name"
    t.string   "lastname"
    t.string   "company"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "gsm"
    t.string   "fax"
    t.string   "subject"
    t.text     "message"
    t.boolean  "callmeback"
    t.boolean  "appointment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "floors", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.string   "plan"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.text     "description"
    t.string   "plan"
    t.integer  "floor_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media_categories", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", :force => true do |t|
    t.string   "title"
    t.string   "alias"
    t.string   "menu_label"
    t.string   "file"
    t.integer  "media_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
