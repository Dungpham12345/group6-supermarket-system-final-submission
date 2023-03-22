class Supplier < ApplicationRecord
    has_many:Product

    validates_presence_of:sup_ID, :sup_name, :contact, :address, :email
    validates_uniqueness_of:sup_ID
    validates_numericality_of:sup_ID
end
