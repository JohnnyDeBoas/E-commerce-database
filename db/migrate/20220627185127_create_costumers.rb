class CreateCostumers < ActiveRecord::Migration[5.2]
  def change
    create_table :costumers do |t|
      t.string :name
      t.string :adress
      t.string :state
      t.string :payment_prefer
      t.float :total_spent

      t.timestamps
    end
  end
end
