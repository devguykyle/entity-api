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

ActiveRecord::Schema[7.1].define(version: 2024_01_24_224442) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "product_key"
    t.integer "product_sku"
    t.integer "store_sku"
    t.integer "product_tertiary_id"
    t.string "status"
    t.string "site_status"
    t.string "product_upc"
    t.string "long_name"
    t.string "short_name"
    t.string "model_number"
    t.string "serial_number"
    t.string "product_description"
    t.string "product_detail"
    t.string "price"
    t.string "sale_price"
    t.string "meta_keywords"
    t.string "meta_description"
    t.string "meta_title"
    t.boolean "is_active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_upc"], name: "index_products_on_product_upc", unique: true
  end

end
