class Sale < ApplicationRecord
  belongs_to :product_code
  belongs_to :staff_ID

  validates_presence_of:product_code, :staff_ID, :date, :quantity, :price, :grand_total
  validates_uniqueness_of:product_code, :staff_ID
  validates_numericality_of:product_code


end
