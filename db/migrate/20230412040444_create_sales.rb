class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :product, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      t.datetime :date
      t.integer :quantity
      t.float :price
      t.float :grand_total

      t.timestamps
    end
  end
end
