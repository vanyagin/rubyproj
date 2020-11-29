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

ActiveRecord::Schema.define(version: 2020_11_29_155131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.string "mail", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "buyer_id"
    t.integer "quantity", null: false
    t.string "comment"
    t.string "payment", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name", null: false
    t.string "country"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.string "description"
    t.integer "quantity", null: false
    t.bigint "category_id"
    t.bigint "producer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["producer_id"], name: "index_products_on_producer_id"
  end

end
