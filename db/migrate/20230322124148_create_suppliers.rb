class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.integer :sup_ID
      t.string :sup_name
      t.string :contact
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
