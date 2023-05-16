class ChangePriceDataTypeInSales < ActiveRecord::Migration[7.0]
  def change
    change_column :sales, :price, :decimal, precision: 10, scale: 2
  end
end
