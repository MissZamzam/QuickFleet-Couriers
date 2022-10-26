class RemoveDeliveryId < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :delivery_id, :integer
    remove_column :orders, :receipt_id, :integer
  end
end
