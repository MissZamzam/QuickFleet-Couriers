class AddingOrdersColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :senderName, :string
    add_column :orders, :receiverName, :string
    add_column :orders, :amountPaid, :integer
    add_column :orders, :natureOfGoods, :string
  end
end
