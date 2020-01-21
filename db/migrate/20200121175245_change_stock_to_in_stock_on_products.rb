class ChangeStockToInStockOnProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :active_status, :in_stock
  end
end
