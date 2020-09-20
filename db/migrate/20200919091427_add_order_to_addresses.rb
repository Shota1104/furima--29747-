class AddOrderToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :order, :string
  end
end
