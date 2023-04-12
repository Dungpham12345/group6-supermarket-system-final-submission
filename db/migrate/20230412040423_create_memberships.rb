class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.string :mem_name
      t.string :gender
      t.date :date_of_birth
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
