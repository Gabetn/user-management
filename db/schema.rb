# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_24_032722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "gov_id_number"
    # Assumption: we are not aware of all possible goverment id types hence string, otherwise enum
    t.string "gov_id_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    # Assumption: Emails are unique and will be commonly used as a primary search param hence unique index.
    t.index ["email"], name: "index_users_on_email", unique: true
    # Assumption: goverment id numbers are unique and they will be commonly used as a primary search param hence unique index.
    t.index ["gov_id_number"], name: "index_users_on_gov_id_number", unique: true
  end

end
