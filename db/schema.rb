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

ActiveRecord::Schema.define(:version => 20120122065414) do

  create_table "foodlog_entries", :force => true do |t|
    t.integer  "foodlog_id"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foodlogs", :force => true do |t|
    t.date     "entry_date"
    t.integer  "water"
    t.integer  "leafy_green"
    t.integer  "vitamin_c"
    t.integer  "calories"
    t.integer  "protein"
    t.integer  "calcium"
    t.integer  "fruit_and_veg"
    t.integer  "whole_grain"
    t.integer  "iron_rich"
    t.integer  "fat_foods"
    t.integer  "vitamins"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.integer  "green"
    t.integer  "vitamin_c"
    t.integer  "protein"
    t.integer  "calcium"
    t.integer  "fruits_and_veg"
    t.integer  "whole_grain"
    t.integer  "iron_rich"
    t.integer  "fat_food"
    t.integer  "vitamins"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "daily_need"
    t.string   "serving_value"
  end

end
