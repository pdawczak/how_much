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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190302213904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "submissions", force: :cascade do |t|
    t.integer "education"
    t.decimal "hours_per_week", precision: 4, scale: 2
    t.decimal "capital_gain", precision: 8, scale: 2
    t.boolean "male"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "classified_as"
    t.boolean "was_correct"
  end

end
