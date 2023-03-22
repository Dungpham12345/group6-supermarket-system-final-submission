class Membership < ApplicationRecord
    validates_presence_of:mem_ID, :mem_name, :gender, :date_of_birth, :contact, :address
    validates_uniqueness_of:mem_ID
    validates_numericality_of:mem_ID


end
