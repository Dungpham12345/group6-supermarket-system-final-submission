class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :product_code
      t.string :product_name
      t.string :category
      t.float :price
      t.references :supplier_ID, null: false, foreign_key: true
      t.string :subcategory

      t.timestamps
    end
  end
end
