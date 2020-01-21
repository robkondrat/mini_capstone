class ChangePriceOnProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, "NUMERIC USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
