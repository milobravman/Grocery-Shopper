class RemoveOrdersFromCustomers < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :order 
  end
end
