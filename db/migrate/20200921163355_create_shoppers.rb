class CreateShoppers < ActiveRecord::Migration[6.0]
  def change
    create_table :shoppers do |t|
      t.string :name
      t.string :availability
      t.float :weight_max

      t.timestamps
    end
  end
end
