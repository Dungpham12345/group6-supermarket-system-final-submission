class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :category
      t.float :price
      t.references :supplier, null: false, foreign_key: true
      t.string :subcategory
      t.string :origin
      t.string :size

      t.timestamps
    end
  end
end
