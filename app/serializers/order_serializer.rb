class OrderSerializer < ActiveModel::Serializer
  attributes :id, :senderName, :receiverName, :natureOfGoods, :pickup, :destination
end
  attributes :id, :sender_name, :receiver_name, :amount_paid, :nature_of_goods, :pickup, :destination, :service_id, :delivery_id, :receipt_id
end
