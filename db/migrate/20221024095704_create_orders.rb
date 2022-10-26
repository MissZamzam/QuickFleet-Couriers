class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :sender_name
      t.string :receiver_name
      t.integer :amount_paid
      t.string :nature_of_goods
      t.string :pickup
      t.string :destination
      t.integer :delivery_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
