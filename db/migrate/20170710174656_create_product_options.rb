class CreateProductOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :product_options do |t|
      t.references :product, null: false, index: true
      t.string :name, null: false
      t.string :values, array: true, null: false, default: []

      t.timestamps
    end

    add_index :product_options, [:product_id, :name], unique: true
  end
end
