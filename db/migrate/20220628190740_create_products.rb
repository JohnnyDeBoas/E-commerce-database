class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :sku
      t.integer :in_inventory
      t.boolean :available
      t.string :category

      t.timestamps
    end
  end
end
