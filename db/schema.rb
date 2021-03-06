# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_000624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "snapshots", force: :cascade do |t|
    t.integer "wallet_id"
    t.decimal "bitcoin"
    t.decimal "ethereum"
    t.decimal "tether"
    t.decimal "cardano"
    t.decimal "solana"
    t.bigint "unix"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "bitcoin"
    t.decimal "ethereum"
    t.decimal "tether"
    t.decimal "cardano"
    t.decimal "solana"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
