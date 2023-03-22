class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.integer :staff_ID
      t.integer :staff_name
      t.string :gender_integer
      t.integer :age
      t.string :address
      t.date :date_of_birth

      t.timestamps
    end
  end
end
