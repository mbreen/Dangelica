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

ActiveRecord::Schema.define(:version => 20120108000930) do

  create_table "beads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clasps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crystals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "earring_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filler_beads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jewelry_beads", :force => true do |t|
    t.integer  "jewelry_item_id"
    t.integer  "bead_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jewelry_beads", ["bead_id"], :name => "index_jewelry_beads_on_bead_id"
  add_index "jewelry_beads", ["jewelry_item_id"], :name => "index_jewelry_beads_on_jewelry_item_id"

  create_table "jewelry_crystals", :force => true do |t|
    t.integer  "jewelry_item_id"
    t.integer  "crystal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jewelry_crystals", ["crystal_id"], :name => "index_jewelry_crystals_on_crystal_id"
  add_index "jewelry_crystals", ["jewelry_item_id"], :name => "index_jewelry_crystals_on_jewelry_item_id"

  create_table "jewelry_filler_beads", :force => true do |t|
    t.integer  "jewelry_item_id"
    t.integer  "filler_beads_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jewelry_filler_beads", ["filler_beads_id"], :name => "index_jewelry_filler_beads_on_filler_beads_id"
  add_index "jewelry_filler_beads", ["jewelry_item_id"], :name => "index_jewelry_filler_beads_on_jewelry_item_id"

  create_table "jewelry_items", :force => true do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "jewelry_type_id"
    t.float    "price"
    t.integer  "string_type_id"
    t.integer  "clasp_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "earring_type_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "jewelry_items", ["clasp_id"], :name => "index_jewelry_items_on_clasp_id"
  add_index "jewelry_items", ["jewelry_type_id"], :name => "index_jewelry_items_on_jewelry_type_id"
  add_index "jewelry_items", ["string_type_id"], :name => "index_jewelry_items_on_string_type_id"

  create_table "jewelry_stones", :force => true do |t|
    t.integer  "jewelry_item_id"
    t.integer  "stone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jewelry_stones", ["jewelry_item_id"], :name => "index_jewelry_stones_on_jewelry_item_id"
  add_index "jewelry_stones", ["stone_id"], :name => "index_jewelry_stones_on_stone_id"

  create_table "jewelry_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "model_placements", :force => true do |t|
    t.integer  "event_id"
    t.integer  "runway_model_id"
    t.integer  "jewelry_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "model_placements", ["event_id"], :name => "index_model_placements_on_event_id"
  add_index "model_placements", ["jewelry_item_id"], :name => "index_model_placements_on_jewelry_item_id"
  add_index "model_placements", ["runway_model_id"], :name => "index_model_placements_on_runway_model_id"

  create_table "runway_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showcase_placements", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "showcase_id"
    t.integer  "jewelry_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "showcase_placements", ["jewelry_item_id"], :name => "index_showcase_placements_on_jewelry_item_id"
  add_index "showcase_placements", ["showcase_id"], :name => "index_showcase_placements_on_showcase_id"

  create_table "showcases", :force => true do |t|
    t.string   "name"
    t.integer  "num_positions"
    t.string   "location_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "string_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
