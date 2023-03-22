class Staff < ApplicationRecord
    has_many:Sale

    validates_presence_of:staff_ID, :staff_name, :gender, :age, :address, :date_of_birth
    validates_uniqueness_of:staff_ID
    validates_numericality_of:staff_ID 


end
