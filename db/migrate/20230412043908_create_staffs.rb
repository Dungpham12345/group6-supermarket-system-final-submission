class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.integer :gender
      t.integer :age
      t.string :address
      t.date :date_of_birth

      t.timestamps
    end
  end
end
