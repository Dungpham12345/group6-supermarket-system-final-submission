class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :product_code, null: false, foreign_key: true
      t.references :staff_ID, null: false, foreign_key: true
      t.datetime :date
      t.integer :quantity
      t.float :price
      t.float :grand_total

      t.timestamps
    end
  end
end
