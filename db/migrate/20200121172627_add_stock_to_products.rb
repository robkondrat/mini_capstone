class AddStockToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :active_status, :boolean, default: true
  end
end
