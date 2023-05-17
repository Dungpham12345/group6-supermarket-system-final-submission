class Sale < ApplicationRecord
  belongs_to  :product
  belongs_to :staff

  validates_presence_of :date, :quantity
  validates_numericality_of :quantity

  validate :date_cannot_be_in_the_future
  def date_cannot_be_in_the_future
    errors.add(:date, "can't be in the future") if date.present? && date > DateTime.current
  end
  
  validate :quantity_must_be_positive
  def quantity_must_be_positive
    errors.add(:quantity, 'must be a positive integer') if quantity.to_i <= 0
  end
  
  before_save :calculate_grand_total
  # Calculate the grand total based on price and quantity
   def calculate_grand_total
    grand_total = price.to_f * quantity.to_i
  end
end
