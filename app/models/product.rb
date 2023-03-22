class Product < ApplicationRecord
  belongs_to :supplier_ID

  validates_presence_of:product_code, :product_name, :category, :price, :supplier_ID, :subcategory
  validates_uniqueness_of:product_code
  validates_numericality_of:product_code
end
