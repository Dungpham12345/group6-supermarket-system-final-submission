class Product < ApplicationRecord
  belongs_to :supplier
  validates_presence_of :product_name, :category, :price, :supplier, :subcategory, :origin, :size
end
