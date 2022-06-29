class AddPaymentPreferNameToCostumers < ActiveRecord::Migration[5.2]
  def change
    add_column :costumers, :payment_prefer_name, :string
  end
end
