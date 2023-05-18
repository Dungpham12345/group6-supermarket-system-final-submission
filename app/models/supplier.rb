class Supplier < ApplicationRecord
    has_many :products

    validates_presence_of :sup_name, :contact, :address, :email
    validates_uniqueness_of :contact
end
