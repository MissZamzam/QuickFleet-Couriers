class RemovingOrderColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :sender_name, :string
    remove_column :orders, :receiver_name, :string
    remove_column :orders, :amount_paid, :integer
    remove_column :orders, :nature_of_goods, :string
  end
end
