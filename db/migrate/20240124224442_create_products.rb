class CreateProducts < ActiveRecord::Migration[7.1]
  def up
    create_table :products, id: :uuid do |t|
      t.integer :product_key
      t.integer :product_sku
      t.integer :store_sku
      t.integer :product_tertiary_id

      t.string :status
      t.string :site_status
      t.string :product_upc
      t.string :long_name
      t.string :short_name
      t.string :model_number
      t.string :serial_number
      t.string :product_description
      t.string :product_detail
      t.string :price
      t.string :sale_price
      t.string :meta_keywords
      t.string :meta_description
      t.string :meta_title

      t.boolean :is_active, default: false

      t.timestamps
    end
    add_index :products, [:product_upc], unique: true
  end

  def down
    drop_table :products
  end
end
