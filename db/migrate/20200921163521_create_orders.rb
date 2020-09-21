class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :shopper_id
      t.text :grocery_list
      t.float :list_weight

      t.timestamps
    end
  end
end
