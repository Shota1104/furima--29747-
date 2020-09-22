class AddOrderToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :order_id, :integer, foreign_key: true
  end
end
