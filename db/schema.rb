# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090401225003) do

  create_table "assets", :force => true do |t|
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "attachings_count",  :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachings", :force => true do |t|
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachings", ["asset_id"], :name => "index_attachings_on_asset_id"
  add_index "attachings", ["attachable_id"], :name => "index_attachings_on_attachable_id"

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "full_path"
    t.integer  "parent_id"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.text     "body"
    t.datetime "published_at"
    t.boolean  "hidden"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
